{ pkgs, ... }:

{


  environment.systemPackages = with pkgs; [
    libvirt
    qemu_kvm
  ];




  virtualisation = {


    # oci-containers = {
    #   backend = "docker";
    #   containers = {
    #
    #     portainer = {
    #       image = "portainer/portainer-ce:latest";  
    #       ports = [
    #         { containerPort = 9000; hostPort = 9000; }  
    #       ];
    #       restartPolicy = "always";  
    #       volumes = [
    #         { containerPath = "/data"; hostPath = "/var/lib/portainer"; }  
    #       ];
    #     };
    #   };
    # };


    # arion = {
    # enable = true;
    # };



    podman = {
      enable = false;
      dockerSocket = {
        enable = false;

      };

       defaultNetwork.settings.dns_enabled = false;

    };







    docker = {
      enable = true;
      enableOnBoot = false;
    };
    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs.qemu_kvm;
        runAsRoot = true;
        swtpm.enable = true; #software-based tpm emulation for vms
        ovmf = {
          #Open Virtual Machine Firmware : open source implementation of uefi 
          enable = true;
          packages = [
            (pkgs.OVMF.override {
              secureBoot = true;
              tpmSupport = true;
            }).fd
          ]; # firmware disk image file extension used by qemu to boot vms in uefi
        };
      };
    };
  };


}
