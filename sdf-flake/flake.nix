{
  description = "SDF is the fastest way to build a scalable, reliable, and optimized data warehouse.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
  }: {
    defaultPackage.x86_64-linux = with import nixpkgs {system = "x86_64-linux";};
      stdenv.mkDerivation rec {
        name = "sdf-${version}";

        version = "v0.10.7";

        # https://nixos.wiki/wiki/Packaging/Binaries
        src = pkgs.fetchurl {
          url = "https://github.com/sdf-labs/sdf-cli/releases/download/${version}/sdf-${version}-x86_64-unknown-linux-musl.tar.gz";
          sha256 = "sha256-1DC2O+UWx7O9pKSRjetzcN9sqbxM6lY3o1XB39RQUpU=";
        };

        sourceRoot = "./sdf-${version}-x86_64-unknown-linux-musl";

        installPhase = ''
          install -m755 -D sdf $out/bin/sdf
        '';

        meta = with lib; {
          homepage = "https://docs.sdf.com";
          description = "SDF is the fastest way to build a scalable, reliable, and optimized data warehouse.";
          platforms = platforms.linux;
        };
      };
  };
}
