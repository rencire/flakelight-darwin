{ config, pkgs, ... }:

{
  networking.computerName = config.networking.hostName;
  networking.localHostName = config.networking.hostName;

  programs.bash.enable = false;
  environment.systemPackages = [ pkgs.gcc ];

  security.pam.services.sudo_local.touchIdAuth = true;
}
