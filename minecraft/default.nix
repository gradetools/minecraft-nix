{pkgs, ...}: {
  services.minecraft-server = {
    enable = true;
    eula = true;
    declarative = true;
    dataDir = "/srv/minecraft";
    openFirewall = true;
    package = pkgs.minecraft-server;
    jvmOpts = "-Xms2048M -Xmx10G";
  };
}
