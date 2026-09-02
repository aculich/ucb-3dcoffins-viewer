# ucb-3dcoffins-web

Modern WebGL/WebGPU 3D viewer and epigraphic annotation inspector for the **Book of the Dead in 3D** project.

## Features

- **Three.js 3D Viewport**: OrbitControls, PBR materials, dynamic raking light slider for surface incision reading.
- **3D Annotation Highlighting**: 204 polygonal vector bounding regions rendered in 3D space with depth attenuation.
- **Bidirectional Spatial-Linguistic Linking**: Hover/click hieroglyphic texts to highlight 3D surface areas; click 3D model regions to inspect epigraphy.
- **Inspector Tabs**: Overview, Inscriptions, Deities & Family, Searchable Lexicon (75 entries), and Context.
- **WebXR Ready**: Architecture prepared for immersive VR (Quest 3, Vision Pro) and AR 1:1 scale inspection.

## Quick Start

From repository root:
```bash
just serve
```
