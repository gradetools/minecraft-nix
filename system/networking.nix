{
  config,
  pkgs,
  ...
}: {
  networking = {
    hostName = "grade-mc-server";
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ "25565" "22" ];
      allowedUDPPorts = [ "25565" "22" ];
    };  
  };
}
