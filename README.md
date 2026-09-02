# PAHMA-5-522: 3D Coffin & Epigraphic Annotation Explorer

An interactive 3D WebGL, Reflectance Transformation Imaging (RTI) raking light, and spatial hieroglyphic annotation viewer for **PAHMA-5-522** (*Sarcophagus Lid of Psamtik*), preserved at the Phoebe A. Hearst Museum of Anthropology, UC Berkeley.

🌐 **Live Demo on GitHub Pages**: [**https://aculich.github.io/ucb-3dcoffins-viewer/**](https://aculich.github.io/ucb-3dcoffins-viewer/)

---

## 1. Features

- **Photorealistic 3D Basalt Inspection**: High-density 3D photogrammetric mesh with smooth orbital, pan, and cinematic macro zoom.
- **Interactive RTI Raking Torch**: Real-time grazing torch lighting with adjustable azimuth ($0^\circ–360^\circ$), grazing pitch ($5^\circ–75^\circ$), and shadow depth.
- **Spatial Epigraphic Annotations**: 204 segmented 3D hieroglyphic vector contours with true surface normal projections.
- **Hieroglyphic Parsing**: Inscriptions rendered in high contrast using RESLite and Gardiner sign fonts.
- **Global Context-Sensitive Search & Autocomplete**: Instant search and ranked completions across inscriptions, lexicon, and protective deities.
- **Multi-Tier Zoom State Machine**: First click selects without camera jump; repeat clicks cycle through Overview, Close-Up, and Macro detail ($0.28\text{ m}$).
- **Keyboard Shortcut Navigation**: Full vim (<kbd>h</kbd><kbd>j</kbd><kbd>k</kbd><kbd>l</kbd>) 3D orbit, two-stage <kbd>Esc</kbd> reset, <kbd>/</kbd> find, and tab switching.

---

## 2. Quickstart (Local Development)

### Prerequisites
- Python 3 (`python3`)
- `just` (optional, for convenience: `brew install just`)
- `git`

### Running Locally
```bash
# 1. Clone this repository
git clone https://github.com/aculich/ucb-3dcoffins-viewer.git
cd ucb-3dcoffins-viewer

# 2. Fetch the open archaeological dataset (from aculich/ucb-3dcoffins-data)
just doit
# OR manually without just:
git clone --depth=1 https://github.com/aculich/ucb-3dcoffins-data.git _temp_data
cp -r _temp_data/data . && cp -r _temp_data/raw_data . && rm -rf _temp_data
python3 serve.py
```

Then open `http://localhost:8000` in your browser.

---

## 3. Keyboard Shortcuts

| Shortcut | Action |
| :--- | :--- |
| <kbd>/</kbd> or <kbd>Ctrl-S</kbd> / <kbd>Cmd-F</kbd> | Focus global search |
| <kbd>↓</kbd> / <kbd>↑</kbd> or <kbd>Tab</kbd> / <kbd>Shift-Tab</kbd> | Navigate autocomplete suggestions |
| <kbd>Enter</kbd> | Select match & cycle next |
| <kbd>Shift-Enter</kbd> | Cycle previous match |
| <kbd>Escape</kbd> | **1st Esc**: Clear search & unselect • **2nd Esc**: Recenter & reset 3D view |
| <kbd>h</kbd> <kbd>j</kbd> <kbd>k</kbd> <kbd>l</kbd> / Arrow Keys | 3D Orbit & Tilt |
| <kbd>+</kbd> / <kbd>-</kbd> or <kbd>i</kbd> / <kbd>o</kbd> | Zoom in / out |
| <kbd>r</kbd> | Reset camera to upright front |
| <kbd>z</kbd> | Toggle Zen Mode (fullscreen 3D) |
| <kbd>a</kbd> | Toggle 3D annotation vector outlines |
| <kbd>m</kbd> | Cycle material mode (Photorealistic / Relief / Wireframe) |
| <kbd>1</kbd>–<kbd>5</kbd> or <kbd>[</kbd> / <kbd>]</kbd> | Switch inspector tabs |
| <kbd>?</kbd> or <kbd>Cmd-/</kbd> | Open shortcuts reference guide |

---

## 4. Dataset Repository

The 3D polygonal mesh, texture maps, vector polygon coordinates, epigraphic texts, and vocabulary data are published in the open data repository:
- [**https://github.com/aculich/ucb-3dcoffins-data**](https://github.com/aculich/ucb-3dcoffins-data)

---

## 5. License & Attribution

- Software: MIT License.
- Object & Dataset: Phoebe A. Hearst Museum of Anthropology, UC Berkeley.
