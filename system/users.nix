{
  config,
  pkgs,
  ...
}: {
  users.users.leviticusc = {
    isNormalUser = true;
    description = "sysadmin";
    extraGroups = ["networkmanager" "wheel" "audio" "video" "input"];
    packages = with pkgs; [];
    shell = pkgs.zsh;
  };
  users = {
    motd = "welcome to the grade server shell prompt!\n===================\n\nthe minecraft server has already started, so theres nothing you need to do here :)\n\nfor more information and help, including stuff about switching tracks, please\nread the docs at:\n\nhttps://github.com/gradetools/minecraft-nix/wiki\n\nthanks for reading!"; 
  };
}
