#!/usr/bin/env bash
set -euo pipefail

export PATH="$HOME/.local/bin:$HOME/fvm/bin:$PATH"

if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate bash)"
fi

cd /workspace

if command -v mise >/dev/null 2>&1; then
  mise trust /workspace/.mise.toml 2>/dev/null || true
  mise install
fi

if command -v fvm >/dev/null 2>&1; then
  fvm install
  fvm flutter pub get
else
  echo "fvm is not installed; bootstrap Flutter tooling in the base snapshot first." >&2
  exit 1
fi
