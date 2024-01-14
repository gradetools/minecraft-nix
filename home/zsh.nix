{
  config,
  pkgs,
  self,
  user,
  ...
}: {
  programs = {
    zsh = {
      enable = true;
      history = {
        path = "/home/leviticusc/.config/zsh/histfile";
      };
      shellAliases = {
        grep = "grep --color";
        ip = "ip --color";
        l = "ls -lah --color";
        vim = "nvim";
        test = "echo this is a test!";
      };
    };
  };
}

