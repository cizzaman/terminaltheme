# terminaltheme

A small curses TUI for picking matching [Terminal.app](https://support.apple.com/guide/terminal/welcome/mac) and [Ghostty](https://ghostty.org/) themes.

It was built around theme files downloaded from [TerminalColors](https://terminalcolors.com/). The repository does not vendor those theme files; it reads your local `.terminal` profiles and Ghostty theme files.

## Install

```bash
git clone https://github.com/cizzaman/terminaltheme.git
cd terminaltheme
./install.sh
```

Then run:

```bash
terminaltheme
```

## Expected Theme Locations

By default, `terminaltheme` looks here:

```text
~/Library/Mobile Documents/com~apple~CloudDocs/TerminalColors/Terminal.app
~/.config/ghostty/themes
~/.config/ghostty/config
```

You can override those paths with:

```bash
TERMINALTHEME_BASE_DIR=/path/to/TerminalColors terminaltheme
TERMINALTHEME_TERMINAL_DIR=/path/to/terminal-profiles terminaltheme
TERMINALTHEME_GHOSTTY_THEMES_DIR=/path/to/ghostty/themes terminaltheme
TERMINALTHEME_GHOSTTY_CONFIG=/path/to/ghostty/config terminaltheme
```

## Controls

```text
Enter / b   apply selected theme to both terminals
t           apply to Terminal.app
g           apply to Ghostty
/           search
j/k         move selection
?           help
q           quit
```

Terminal.app profiles are imported only when needed and then set as default/startup. Ghostty updates the `theme = ...` line in the config file and creates a timestamped backup first.

## Requirements

- macOS
- Python 3.9+
- Terminal.app themes as `.terminal` files
- Ghostty theme files, if you want Ghostty support

## License

MIT
