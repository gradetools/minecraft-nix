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
    initialHashedPassword = "173b4y23b4y123b4u123by412bu34b1y2u3b1y2u3b4u1i3b4";
    # openssh.authorizedKeys.keyFiles = [
    #   /etc/nixos/ssh/authorized_keys
    # ];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJSzqlsE1s9Toudq7MjPJebqAjIJesgGS5TYHWbI/qfq31IEqEW1phvmeNmRXjdDMlJl05VjSEaGSaiNosS7TvTrjGYSVfYJ9Bw3oGszIWgLN4xxKNgGXEo5H+vhk4JVOMWcslWVSdSXAoD6ruBahaC08g74HxdPQo/NJ7v8kM2r/ZuLqu2rSHJAxcXvvPE2Zhnh6uHr+aSlNDweygg6Otk6fSA1tcGKaudW4Pjiob3olJ+x4WOppYNUBa9XOxMgX3MSEcr8XNdvsHOQBap6uF/m/Ph2Nl9fvlDcTWX5FxtP186B3c/Um3hTVLmuIgqbuAjhRfXuc8mtsDvGqTwH1wyV/R2todE4k88YDnt07GNdFD6/23q1n+MbAruY+FSuWVsnbgENG9G6Tlq6HMobLdvrUOF2OZVX4EWjya0a6HszycGIV9c9pmmVCmYEWzDtgEKisr7pZibbrcxB7M/4bY89t544Xux0XIetACPYXu2TEwglaRuIZd0n3dskbisrk= elliot@elliotpc"
    ];
  };
}
