#!/usr/bin/env bash
set -euo pipefail

export PATH="$HOME/.local/bin:$PATH"

if ! command -v mise >/dev/null 2>&1; then
  curl -fsSL https://mise.run | sh
  export PATH="$HOME/.local/bin:$PATH"
fi

cd /workspace
mise trust /workspace/.mise.toml 2>/dev/null || true
eval "$(mise activate bash)"
mise install
