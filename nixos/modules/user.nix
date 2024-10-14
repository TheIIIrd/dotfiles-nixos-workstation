{ pkgs, pkgs-unstable, ... }: {
  # Enable Zsh
  programs.zsh.enable = true;

  users = {
    # Default shell
    defaultUserShell = pkgs.zsh;

    users.<username> = {
      isNormalUser = true;
      description = "<username>";
      extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
      packages = with pkgs-unstable; [ 
        obsidian
        r2modman
        vesktop
        ];
    };
  };
}
