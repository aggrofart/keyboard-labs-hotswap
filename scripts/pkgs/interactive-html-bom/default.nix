{
  stdenv,
  fetchFromGitHub,
  python3,
  writeScriptBin,
  kicad,
}: let
  kicadPythonModule =
    python3.pkgs.toPythonModule
    (kicad.override {
      inherit python3;
    })
    .src;
  interactive-html-bom = stdenv.mkDerivation rec {
    pname = "interactive-html-bom";
    version = "2.4.1";

    src = fetchFromGitHub {
      owner = "openscopeproject";
      repo = "InteractiveHtmlBom";
      rev = "v${version}";
      sha256 = "sha256-K5tHZckJenQW1TD1aEa25u19yskzG28DLl7LMk7CgiU=";
    };

    installPhase = ''
      mkdir -p $out/
      cp -r . $out
    '';

    patches = [./remove-footprint-from-default-group-field.patch];
  };
  python-with-my-packages = python3.withPackages (p:
    with p; [
      kicadPythonModule
      wxPython_4_1
    ]);
in
  writeScriptBin "InteractiveHtmlBom" ''
    ${python-with-my-packages}/bin/python ${interactive-html-bom}/InteractiveHtmlBom/generate_interactive_bom.py $*
  ''
