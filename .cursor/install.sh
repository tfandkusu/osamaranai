set -euo pipefail
curl -fsSL https://fvm.app/install.sh | bash
export PATH="$HOME/fvm/bin:$HOME/fvm/default/bin:$PATH"
flutter_version=$(grep -E '^flutter\s*=' .mise.toml | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
fvm install "${flutter_version}"
fvm global "${flutter_version}"
flutter pub get
