{
  description = "My System Configuration Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    username = "lucas";
    inherit (self) outputs;
  in {
    nixosConfigurations.bandai-gaeru = nixpkgs.lib.nixosSystem {
      system = "${system}";
      specialArgs = {inherit inputs outputs username;};
      modules = [
        ./nixos/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.lucas = import ./home-manager/home.nix;
        }
      ];
    };
    formatter.${system} = inputs.alejandra.defaultPackage.${system};
  };
}
