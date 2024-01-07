{config, ...}: {
  imports = [
    ./boot.nix
    ./users.nix
    ./packages.nix
    ./services.nix
    ./security.nix
    ./nix.nix
    ./i18n.nix
    ./hardware-config.nix
  ];
  system.stateVersion = "24.05";
}
