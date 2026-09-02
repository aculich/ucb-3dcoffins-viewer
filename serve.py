import http.server
import os
import sys

port = int(os.environ.get('PORT', sys.argv[1] if len(sys.argv) > 1 else 8000))
print(f"Starting server on port {port}...")
http.server.test(http.server.SimpleHTTPRequestHandler, port=port)
