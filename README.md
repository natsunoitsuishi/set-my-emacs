# set-my-emacs

My personal Emacs configuration, split into modules, for Debian Linux.

## Directory Structure

```
.
├── early-init.el      # Early startup settings (GUI elements, package manager tweaks, etc.)
├── init.el            # Entry point, loads the modules under lisp/
├── custom.el          # Settings generated automatically by Emacs Customize
└── lisp/
    ├── init-packages.el     # Package management
    ├── init-ui.el           # Appearance: font, theme, line numbers
    ├── init-editor.el       # Basic editor settings
    ├── init-keys.el         # Key bindings
    ├── init-completion.el   # Completion
    ├── init-prog.el         # General programming settings
    ├── init-c.el            # C / C++
    ├── init-rust.el         # Rust
    └── init-asm.el          # Assembly
```

## Installation

Requires Emacs 29 or later.

```bash
# If you already have ~/.emacs.d, back it up first
mv ~/.emacs.d ~/.emacs.d.bak

git clone <repository-url> ~/.emacs.d
```

On first launch, the required packages are downloaded automatically. Please make sure you have a working network connection and wait a moment.

> Auto-generated content such as `elpa/` and `eln-cache/` is excluded via `.gitignore` and is not uploaded.

## Font: Iosevka

This config uses [Iosevka](https://github.com/be5invis/Iosevka) by default. It must be installed on your system first.

### 1. Download

Open <https://github.com/be5invis/Iosevka/releases> and download one of the following from the Assets of the latest release:

- `PkgTTC-Iosevka-<version>.zip`: regular Iosevka, sans-serif, monospaced (recommended)
- `PkgTTC-IosevkaSlab-<version>.zip`: monospaced slab-serif variant

For example, v34.9.1:

```bash
cd ~/Downloads
wget https://github.com/be5invis/Iosevka/releases/download/v34.9.1/PkgTTC-Iosevka-34.9.1.zip
```

Verify the checksum (optional). The result should be `ecc4e30d932ffb862ef3a92745d4e88d09151d06bfe3a68aa3bd4758822590d7`:

```bash
sha256sum PkgTTC-Iosevka-34.9.1.zip
```

### 2. Install

For the current user only (no sudo required):

```bash
mkdir -p ~/.local/share/fonts/Iosevka
unzip PkgTTC-Iosevka-34.9.1.zip -d ~/.local/share/fonts/Iosevka
fc-cache -fv
```

For all users:

```bash
sudo mkdir -p /usr/local/share/fonts/Iosevka
sudo unzip PkgTTC-Iosevka-34.9.1.zip -d /usr/local/share/fonts/Iosevka
sudo fc-cache -fv
```

### 3. Verify

```bash
fc-list | grep -i "iosevka"
```

If there is output, the installation succeeded. The font family name is `Iosevka`.

### 4. Use it in Emacs

Font settings in `lisp/init-ui.el`:

```elisp
(set-face-attribute 'default nil
                    :family "Iosevka"
                    :height 120)
```

To use another variant, change `:family` to the corresponding family name, e.g. `"Iosevka Slab"`. Restart Emacs after installing the font (restart the daemon if you run Emacs in daemon mode).

In Emacs, you can run `M-x describe-font` to confirm which font is currently in use.

## License

Personal configuration. Feel free to use it as a reference.
