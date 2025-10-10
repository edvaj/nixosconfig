{
  description = "NixOS Config Flake";

  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";

    };
  };

  outputs = { self, nixpkgs, home-manager,... }@inputs: {
    
    nixosConfigurations.dragonfly = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = "x86_64-linux";
      modules = [ 
        ./configuration.nix 
      ];
    };

    homeConfigurations.goat = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = { inherit inputs; };
      modules = [ 
        ./home.nix 
        # Additional Home Manager modules can go here
      ];
    };
  };
}
