{ config, ... }:
{


    powerManagement =
      {
        enable = true;
        powertop.enable = true;

      };

  # Services
  services = {

    thermald.enable = true;
    power-profiles-daemon.enable = false;
    auto-cpufreq = {
      enable = true;
      settings = {
        battery = {
          governor = "powersave";
          turbo = "never";
        };
        charger = {
          governor = "powersave";
          turbo = "auto";
        };
      };
    };



    tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

        CPU_MIN_PERF_ON_AC = 0;
        CPU_MAX_PERF_ON_AC = 100;
        CPU_MIN_PERF_ON_BAT = 0;
        CPU_MAX_PERF_ON_BAT = 50;

        CPU_BOOST_ON_AC = 1;
        CPU_BOOST_ON_BAT = 0;

        CPU_HWP_DYN_BOOST_ON_AC = 1;
        CPU_HWP_DYN_BOOST_ON_BAT = 0;

        START_CHARGE_THRESH_BAT0 = 40; # 40 and bellow it starts to charge
        STOP_CHARGE_THRESH_BAT0 = 70; # 80 and above it stops charging

      };
    };
    # docker = {
    # enable = true;
    # };
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
