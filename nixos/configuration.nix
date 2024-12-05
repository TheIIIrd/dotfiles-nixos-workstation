{ inputs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    ./modules/qemuguest.nix
    ./modules/zerotierone.nix
    ./modules/tailscale.nix
    ./modules/yggdrasil.nix
    ./modules/tlp.nix
  ];

  networking.hostName = "nixos"; # Define your hostname.

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # Select internationalisation properties.
  i18n.defaultLocale = "ru_RU.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS        = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT    = "ru_RU.UTF-8";
    LC_MONETARY       = "ru_RU.UTF-8";
    LC_NAME           = "ru_RU.UTF-8";
    LC_NUMERIC        = "ru_RU.UTF-8";
    LC_PAPER          = "ru_RU.UTF-8";
    LC_TELEPHONE      = "ru_RU.UTF-8";
    LC_TIME           = "ru_RU.UTF-8";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.11"; # Don't change it bro
}
