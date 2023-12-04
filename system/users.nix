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
}
