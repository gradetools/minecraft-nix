{
  config,
  pkgs,
  ...
}: {
  users.users.minecraftsysadmin = {
    isNormalUser = true;
    description = "sysadmin";
    extraGroups = ["networkmanager" "wheel" "audio" "video" "input"];
    packages = with pkgs; [];
    shell = pkgs.zsh;
  };
}
