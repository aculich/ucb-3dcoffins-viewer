#!/usr/bin/env python3
"""Standalone viewer server. Maps /status to the corpus app."""

from __future__ import annotations

import os
import sys
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import unquote, urlparse

ROOT = Path(__file__).resolve().parent


class Handler(SimpleHTTPRequestHandler):
    def translate_path(self, path: str) -> str:
        parsed = unquote(urlparse(path).path)
        if parsed in {"/status", "/status/"}:
            return str(ROOT / "index.html")
        return super().translate_path(path)


def main() -> int:
    os.chdir(ROOT)
    port = int(os.environ.get("PORT", sys.argv[1] if len(sys.argv) > 1 else 8000))
    print(f"Starting server on port {port}...")
    ThreadingHTTPServer(("0.0.0.0", port), Handler).serve_forever()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
