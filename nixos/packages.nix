{ pkgs, ... }: {
  nixpkgs.config = {
    # Allow unfree packages
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop applications
    ptyxis
    clapper
    dconf-editor
    easyeffects
    fragments
    gnome-tweaks
    inkscape
    kdenlive
    krita
    mission-center
    onlyoffice-bin_latest
    protonplus
    protontricks
    tenacity
    tor-browser
    ungoogled-chromium
    vscodium
    gparted

    # Extensions
    gnomeExtensions.appindicator
    gnomeExtensions.blur-my-shell
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.just-perfection

    # Development tools
    android-tools
    python312
    python312Packages.black
    python312Packages.pip
    radare2
    clang
    clang-tools
    gcc
    gnumake
    meson
    cargo
    rustc
    dotnet-sdk_8
    mono
    zulu

    # CLI utilities
    aria2
    bat
    bind
    curl
    fastfetch
    ffmpeg
    file
    git
    inxi
    ipset
    lshw
    neovim
    openssl
    tree
    tldr
    unzip
    wget
    zip

    # Icon themes
    adw-gtk3
    tela-circle-icon-theme

    # Other packages
    home-manager
    nix-index
    zram-generator
  ];

  # Font packages
  fonts.packages = with pkgs; [
    corefonts
    jetbrains-mono
    meslo-lgs-nf
  ];
}
