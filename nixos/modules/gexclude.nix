{ pkgs, ... }: {
  # Exclude specific GNOME packages from the environment
  environment.gnome.excludePackages = with pkgs; [
    epiphany                # Web browser
    gnome-tour              # GNOME tour application
    snapshot                # Snapshot application
    geary                   # Email client
    gnome-contacts          # Contact management application
    gnome-maps              # Maps application
    gnome-music             # Music player application
    gnome-shell-extensions  # Various shell enhancements
    seahorse                # Password and encryption key manager
    totem                   # Video player
  ];
}
