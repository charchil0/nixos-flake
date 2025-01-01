{  pkgs, ... }:
{

  users = {
    users.viola = {
      isNormalUser = true;
      home = "/home/viola";
      description = "its viola, i suppose;";
ignoreShellProgramCheck = true;
      extraGroups = [
      "wheel"
       "networkmanager" 
      "qemu" 
      "libvirtd" 
       "sshd" 
       "audio" 
       "video" 
       "root" 
       "systemd"
       "docker"
       ];
      hashedPassword = "$6$vHKMmwAI5IGJzonT$IeTyEq21hR60k7Pkm8.keOv1cKUXFFtbqdTkp/OMs8fv622dqqadHP7kieEDe0V4UJX5WgstGcr1DpaHxYkg..";
      shell = pkgs.zsh;
    };
  };
}
