{ inputs, ... }:
{
    nixpkgs.overlays = [
        (final: prev: {
            unstable = import inputs.nixpkgsUnstable {
                system = final.system;
                config.allowUnfree = true;
            };
        })
    ];
}
