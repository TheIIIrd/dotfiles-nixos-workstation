# ❄️ NixOS Config Reborn

Welcome to my redesigned NixOS configuration built for efficiency and aesthetics. Right now I'm trying to commit something everyday. Let's see how long I can go.

![screenshot](./screenshots/screenshot1.png)

You can still find my old configuration [here](https://github.com/Andrey0189/nixos-config)

## ✨ Features

- 🖥️ **Multiple Hosts Support**: Easy to configure for different hosts.
- 🎨 **Gruvbox Theme**: A perfect blend of vibrant and subtle colors.
- 🪟 **Hyprland + Waybar**: 10/10 window compositor on Wayland.
- 🏠 **Home Manager Integration**: lots of stuff configured.
- 🧇 **Tmux**: with my own hotkeys.
- 🌟 **Zsh + starship**: Efficient shell setup with lots of aliases.

## 🚀 Installation

To get started with this setup, follow these steps:

1. **Install NixOS**: If you haven't already installed NixOS, follow the [NixOS Installation Guide](https://nixos.org/manual/nixos/stable/#sec-installation) for detailed instructions.
2. **Clone the Repository**:

	```bash
    git clone https://github.com/TheIIIrd/dotfiles-nixos-workstation ~/.nix && cd ~/.nix
    ```

3. **Copy one of the hosts configuration to set up your own**:

    ```bash
    cd hosts
    cp -r slim3 <your_hostname>
    cd <your_hostname>
    ```

4. **Put your `hardware-configuration.nix` file there**:

    ```bash
    cp --no-preserve=mode /etc/nixos/hardware-configuration.nix ~/.nix/hosts/<your_hostname>/
    ```

5. **Edit `hosts/<your_hostname>/local-packages.nix` and `nixos/packages.nix` files if needed**:

    ```bash
    vim local-packages.nix
    vim ../../nixos/packages.nix
    ```

6. **Edit `home-manager/modules/git.nix` git.nix**

    ```bash
    vim ../../home-manager/modules/git.nix
    ```

7. **Finally, edit the `flake.nix` file**:

    ```sh
    sed -i -e 's/amper/<your_hostname>/g' \
       -e '/{ hostname = "330-15ARR"; stateVersion = "24.11"; }/d' \
       -e 's/hostname = "slim3"/hostname = "<your_hostname>"/' \
       -e 's/stateVersion = "24.05"/stateVersion = "<your_state_version>"/' \
       -e 's/homeStateVersion = "24.11";/homeStateVersion = "<your_home_manager_state_version>";/' \
       ~/.nix/flake.nix
    ```

    ```diff
    ...
      outputs = { self, nixpkgs, home-manager, ... }@inputs: let
        system = "x86_64-linux";
    --  homeStateVersion = "24.11";
    ++  homeStateVersion = "<your_home_manager_state_version>";
    --  user = "amper";
    ++  user = "<your_username>";
        hosts = [
    --    { hostname = "slim3"; stateVersion = "24.05"; }
    --    { hostname = "330-15ARR"; stateVersion = "24.11"; }
    ++    { hostname = "<your_hostname>"; stateVersion = "<your_state_version>"; }
        ];
    ...
    ```

8. **Rebuilding**:

    ```bash
    cd ~/.nix
    nixos-rebuild switch --flake ./#<hostname>
    # or nixos-install --flake ./#<hostname> if you are installing on a fresh system
    home-manager switch
    ```

## 😎 Enjoy!

![screenshot](./screenshots/screenshot2.png)

## 🤝 Contributions

Feel free to fork the repository and submit pull requests if you'd like to contribute improvements. Open issues if you encounter any problems with the config or have ideas for new features.