{
  description = "a very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    #hyprland.url = "github:hyprwm/hyprland";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations."viole" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
