# ❄️ My NixOS Workstation Config ![Nix](https://img.shields.io/badge/This_is-Nix-blue?logo=NixOS)

Don't forget to change `<username>` and `<email@example.com>` in [./home-manager/modules/git.nix](home-manager/modules/git.nix). Also check `disabledModules` in [./nixos/configuration.nix](./nixos/configuration.nix).

```bash
git clone https://github.com/TheIIIrd/nixos-custom-workstation.git ~/.nix && cd ~/.nix
```

```bash
cp --no-preserve=mode /etc/nixos/hardware-configuration.nix ~/.nix/nixos/
sed -i "s/<username>/$USER/g" ~/.nix/flake.nix && sed -i "s/<username>/$USER/g" ~/.nix/nixos/modules/user.nix && sed -i "s/<username>/$USER/g" ~/.nix/home-manager/home.nix
```

```bash
git add .
sudo nixos-rebuild boot --upgrade --flake .
home-manager switch -b backup --flake .
```

## After installation
```bash
flatpak remotes --show-details
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

```bash
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"
```

```bash
flatpak search org.gtk.Gtk3theme.adw-gtk3
flatpak install org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark
flatpak install flathub com.github.tchx84.Flatseal page.codeberg.libre_menu_editor.LibreMenuEditor com.heroicgameslauncher.hgl
```
