# Standalone justfile for ucb-3dcoffins-viewer

default:
    @just --list

# Show repository status
status:
    @echo "=== ucb-3dcoffins-viewer ==="
    @git status -s

# Verify local dependencies
doctor:
    @echo "Checking Python 3..."
    @python3 --version || (echo "Python 3 is required" && exit 1)
    @echo "Checking dataset directories..."
    @if [ -d "data" ] && [ -d "raw_data" ]; then \
        echo "✓ Local data and raw_data found"; \
    else \
        echo "⚠ Data not found locally. Run 'just fetch-data' or bootstrap to fetch dataset."; \
    fi

# Fetch dataset from open data repo (ucb-3dcoffins-data)
fetch-data:
    @echo "Cloning latest open dataset from aculich/ucb-3dcoffins-data..."
    @rm -rf _temp_data && git clone --depth=1 https://github.com/aculich/ucb-3dcoffins-data.git _temp_data
    @rm -rf data raw_data
    @cp -r _temp_data/data . && cp -r _temp_data/raw_data .
    @rm -rf _temp_data
    @echo "✓ Dataset ready!"

# Start local dev server via portless (https://3dcoffins.localhost)
serve:
    @command -v portless >/dev/null 2>&1 || { echo "portless is required. Install: npm install -g portless"; exit 1; }
    @portless --name 3dcoffins --force python3 serve.py

# Happy path: ensure data is present, run server, open browser
doit: doctor
    @if [ ! -d "data" ] || [ ! -d "raw_data" ]; then \
        just fetch-data; \
    fi
    @echo "Starting 3D Coffin Viewer at https://3dcoffins.localhost"
    @just serve
