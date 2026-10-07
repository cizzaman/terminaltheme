#!/bin/bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$HOME/.local/bin"
/usr/bin/install -m 0755 "$script_dir/terminaltheme" "$HOME/.local/bin/terminaltheme"

printf 'Installed terminaltheme to %s\n' "$HOME/.local/bin/terminaltheme"
printf 'Run it with: terminaltheme\n'
