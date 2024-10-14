{
  imports = [
    ./bootloader.nix  # Bootloader configuration
    ./trim.nix        # Trim configuration
    ./zram.nix        # ZRAM configuration
    ./nm.nix          # NetworkManager configuration
    ./sound.nix       # Sound configuration
    ./printing.nix    # Printing configuration
    ./xserver.nix     # Windowing system configuration
    ./gexclude.nix    # General exclusions
    ./nvidia.nix      # NVIDIA driver configuration
    ./user.nix        # User accounts and permissions
    ./env.nix         # Environment settings
    ./virtmanager.nix # Virtual Machine Manager configuration
    ./qemuguest.nix   # QEMU guest configuration
    ./zerotierone.nix # ZeroTier One settings
    ./tailscale.nix   # Tailscale settings
    ./yggdrasil.nix   # Yggdrasil settings
    ./steam.nix       # Steam configuration
    ./tlp.nix         # TLP (Laptop Mode Tools) configuration
    ./flatpak.nix     # Flatpak configuration
    ./firefox.nix     # Firefox configuration
  ];
}
