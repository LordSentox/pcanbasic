{ stdenv }:
stdenv.mkDerivation rec {
	name = "pcanbasic-${version}";
	major_version = "4";
	version = "${major_version}.8.0";

	src = ./.;

	buildInputs = [ ];

	buildPhase = ''
		make
	'';

	installPhase = ''
		mkdir -p $out/lib
		cp pcanbasic/lib/libpcanbasic.so $out/lib/libpcanbasic.so
		cp pcanbasic/lib/libpcanbasic.so.${major_version} $out/lib/libpcanbasic.so.${major_version}
		cp pcanbasic/lib/libpcanbasic.so.${version} $out/lib/libpcanbasic.so.${version}
	'';
}
