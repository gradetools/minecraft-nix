{
  config,
  pkgs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;
    wget
    git
    htop
    killall
  ];
  programs = {
    zsh = {
      enable = true;
    };
  };
}
