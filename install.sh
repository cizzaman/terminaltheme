#!/bin/bash
set -euo pipefail

mkdir -p "$HOME/.local/bin"
install -m 0755 "$(dirname "$0")/terminaltheme" "$HOME/.local/bin/terminaltheme"

printf 'Installed terminaltheme to %s\n' "$HOME/.local/bin/terminaltheme"
printf 'Run it with: terminaltheme\n'
