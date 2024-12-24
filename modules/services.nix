{ config, lib, pkgs, ... }:
{


  # Services
  services = {

    logind = {
      lidSwitch = "suspend";
      extraConfig = ''
          HandleLidSwitch=suspend
        HandleLidSwitchDocked=suspend
      '';
    };

    flatpak.enable = false;
    openssh = {
      enable = true;
      settings = {
        PermitRootLogin = "no";
        PasswordAuthentication = true;
      };
    };


    xserver = {

      enable = true;
      displayManager.lightdm.enable = false;
    };

    libinput.enable = true;

    fstrim = {
      enable = true;
      interval = "weekly";
    };
    displayManager.sddm.enable = false;
  };
}
