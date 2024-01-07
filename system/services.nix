{
  config,
  pkgs,
  ...
}: {
  services = {
    devmon.enable = true;
    dbus.enable = true;
    tailscale.enable = true;
    openssh = {
      enable = true;
      settings.PasswordAuthentication = false;
      settings.KbdInteractiveAuthentication = false;
    };
    fail2ban = {
      enable = true;
      maxretry = 5;
      bantime = "24h";
      bantime-increment = {
        enable = true;
        formula = "ban.Time * math.exp(float(ban.Count+1)*banFactor)/math.exp(1*banFactor)";
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
  };
}
