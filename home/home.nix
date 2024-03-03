{
  config,
  pkgs,
  self,
  user,
  lib,
  ...
}: {
  home = {
    username = "leviticusc";
    homeDirectory = lib.mkDefault "/home/leviticusc";
    stateVersion = "23.05";
  };

  programs = {
    home-manager = {
      enable = true;
    };
  };

  imports = [
    ./zsh.nix
  ];
}
