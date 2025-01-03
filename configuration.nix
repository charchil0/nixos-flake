{  ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/boot.nix
      ./modules/nix-config.nix
      ./modules/packages.nix
      ./modules/user.nix
      ./modules/hyprland.nix
      ./modules/services.nix
      ./modules/sound.nix
      ./modules/virtualisation.nix
    ];


  networking = {
    hostName = "viole";
    networkmanager.enable = true;
    enableIPv6 = false;
    firewall.enable = true;
  };


  hardware = {


    graphics.enable = true;
    bluetooth = {
      enable = false;
      powerOnBoot = false;
      settings = {
        General = {
          #Enable = "Source,Sink,Media,Socket";
          #Experimental = true;
        };
      };
    };
  };


  # Localization
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
    useXkbConfig = false;
  };

  # Time configuration
  time = {
    timeZone = "Asia/Kathmandu";
    # hardwareClockInLocaltime = true;  

  };

  environment.variables = {
       QT_STYLE_OVERRIDE="kvantum";
    QT_QPA_PLATFORMTHEME = "qt5ct";     
     MANPAGER = "nvim +Man!";
  };

  # programs.hyprland = {
  #   package= inputs.hyprland.packages."${pkgs.system}".hyprland;
  # };


  # Users

  #nix = {
  #  settings = {
  #    auto-optimise-store = true;
  #    experimental-features = [
  #      "nix-command"
  #      "flakes"
  #    ];
  #    substituters = [ "https://hyprland.cachix.org" ];
  #    #trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
  #  };
  #  gc = {
  #    automatic = true;
  #    dates = "weekly";
  #    options = "--delete-older-than 7d";
  #  };
  #  };

  # System state version
  system.stateVersion = "24.11";
}
