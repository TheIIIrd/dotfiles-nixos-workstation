{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/flake";
      in {
        nh-sw = "nh os switch";
        nh-upd = "nh os switch --update";
        nh-hms = "nh home switch";

        nix-rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
        nix-upd = "nix flake update --flake ${flakeDir}";
        nix-upg = "sudo nixos-rebuild boot --upgrade --flake ${flakeDir}";

        pkgs = "nvim ${flakeDir}/nixos/packages.nix";

        v = "nvim";
        se = "sudoedit";
        ff = "fastfetch";

        gs = "git status";
        ga = "git add";
        gc = "git commit";
        gp = "git push";

        ".." = "cd ..";
      };

    history.size = 5000;
    history.path = "${config.xdg.dataHome}/zsh/history";
  };
}
