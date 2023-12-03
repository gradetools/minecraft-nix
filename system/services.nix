{
  config,
  pkgs,
  ...
}: {
  services = {
    devmon.enable = true;
    dbus.enable = true;
    tailscale.enable = true;
    sshd.enable = true;
    services.fail2ban = {
      enable = true;
      maxretry = 5;
      bantime = "24h";
      bantime-increment = {
        enable = true;
        formula = "ban.Time * math.exp(float(ban.Count+1)*banFactor)/math.exp(1*banFactor)";
        multipliers = "1 2 4 8 16 32 64";
        maxtime = "168h";
        overalljails = true;
      };
      jails = {
        minecraft = ''
          port = 25565
          logpath = /var/log/minecraft-fail2ban.log
          maxretry = 5
          findtime = 600
          bantime = 3600
        '';
      };
    };
    avahi = {
      enable = true;
      nssmdns = true;
      openFirewall = true;
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };

  };
}
