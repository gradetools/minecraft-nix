{
  config,
  pkgs,
  lib,
  ...
}: {
  services.minecraft-server = {
    enable = true;
    eula = true;
    declarative = true;
    dataDir = "/srv/minecraft";
    openFirewall = true;
    package = pkgs.minecraft-server;
    jvmOpts = "-Xms2048M -Xmx10G";
  };

  # this is very hacky, a better implementation is coming soon
  # you can read the minecraft console log with journalctl -f minecraft-server
  # and you can send commands directly to the console with stdin.
  # example: echo 'op player' > /run/minecraft/stdin
  systemd.services.minecraft-server.serviceConfig.StandardInput = "socket";
  systemd.services.minecraft-server.serviceConfig.StandardOutput = "journal";

  systemd.sockets.minecraft-server = {
    description = "control process for the minecraft server";
    socketConfig.ListenFIFO = lib.mkForce "/run/minecraft/stdin";
    wantedBy = [ "sockets.target" ];
  };
}
