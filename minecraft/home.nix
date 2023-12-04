{
  config,
  pkgs,
  self,
  user,
  ...
}: {
  home = {
    username = "leviticusc";
    homeDirectory = "/home/leviticusc";
    stateVersion = "23.05";
  };

  programs = {
    home-manager = {
      enable = true;
    };
  };
  imports = [
  ];
}