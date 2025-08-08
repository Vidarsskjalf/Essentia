<h1 align="center">Essentia</h1>
<p align="center"><i>Built for speed. Tuned for control.</i></p>

Essentia is a fully-scripted, minimal Fedora + Hyprland environment with essential apps, developer tools, and themed configurations. Designed for fast setups, reproducible installs, and clean workflows.

Tested on **Fedora Linux** with **Hyprland (Wayland)**.

### Included Software

**Desktop Environment:**
- `Hyprland` (Wayland WM)
- `waybar` (status bar)
- `mako` (notifications)
- `lxappearance` (GTK theming)
- `thunar` (file manager)

**Terminal Stack:**
- `alacritty` (GPU-accelerated terminal)
- `bash` (shell) with your own custom configs
- `fastfetch` (minimal system info splash)
- `wl-clipboard` (Wayland clipboard support)

**Networking & Tooling:**
- `nmcli` / `bluetoothctl` for network control
- `openssh`, `curl`, `wget`, `nmap`, `htop`, `btm`

**Dev & Engineering Essentials:**
- `docker` (containerization)
- `git` (version control)
- `podman` (alternative container runtime)
- `jq`, `yq` (CLI JSON/YAML tools)
- `neovim` (if not installed, you’re not working)

**Fedora-Specific Tools:**
- `dnf` (base package manager)
- `flatpak` (for GUI apps like Signal, Chromium, Bitwarden)

**Optional Flatpak Tools:**
- `Signal`, `Bitwarden`, `OBS Studio`, `Chromium` with Wayland flags

### Installation

```bash
git clone https://github.com/vidarsskjalf/essentia.git
cd essentia
chmod +x bootstrap.sh
./bootstrap.sh
```
