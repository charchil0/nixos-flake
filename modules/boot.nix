{ ... }:
{
  boot = {

#zswap.enable = true;

    kernelParams = [ "nohibernate" "noquiet" "debug" ];
    #kernelModules = ["zswap"];
    tmp.cleanOnBoot = true;

    loader = {
      efi = {
        canTouchEfiVariables = true;
        #efiSysMountPoint = "/boot";
      };
      grub = {
        device = "nodev";
        efiSupport = true;
        enable = true;
        useOSProber = false;
        timeoutStyle = "menu";
      };
      timeout = 10;
    };
  };
}

