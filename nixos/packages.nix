{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    clapper
    dconf-editor
    easyeffects
    fragments
    gparted
    gnome-tweaks
    inkscape
    kdenlive
    krita
    mission-center
    obs-studio
    onlyoffice-bin_latest
    protonplus
    protontricks
    ptyxis
    tenacity
    tor-browser
    ungoogled-chromium
    vscodium

    # CLI utils
    aria2
    bat
    bind
    curl
    fastfetch
    ffmpeg
    file
    git
    git-graph
    htop
    ipset
    lazygit
    lshw
    nmap
    neovim
    ranger
    ripgrep
    silicon
    tldr
    tree
    unzip
    wget
    zip

    # Coding stuff
    android-tools
    cargo
    clang
    clang-tools
    dotnet-sdk_8
    gcc
    gnumake
    meson
    mono
    python312
    python312Packages.black
    python312Packages.matplotlib
    python312Packages.numpy
    python312Packages.pip
    radare2
    rustc
    zulu

    # Extensions
    gnomeExtensions.appindicator
    gnomeExtensions.blur-my-shell
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.just-perfection

    # Customization
    adw-gtk3
    tela-circle-icon-theme

    # Other
    bemoji
    home-manager
  ];

  fonts.packages = with pkgs; [
    corefonts
    font-awesome
    jetbrains-mono
    meslo-lgs-nf
    noto-fonts
    noto-fonts-emoji
    powerline-fonts
    powerline-symbols
    twemoji-color-font
    # (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
