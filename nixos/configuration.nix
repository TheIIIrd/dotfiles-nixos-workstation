{ stateVersion, hostname, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules
    ];
  
  disabledModules =
    [
      ./modules/qemuguest.nix
      # ./modules/zerotierone.nix
      ./modules/tailscale.nix
      ./modules/yggdrasil.nix
      ./modules/tlp.nix
    ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
