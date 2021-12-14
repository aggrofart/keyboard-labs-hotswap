{ fetchFromGitHub
, python3
, writeScriptBin
}:

let
  pname = "InteractiveHtmlBom";
  version = "2.4.1";
  interactive-html-bom = fetchFromGitHub {
    owner = "openscopeproject";
    repo = pname;
    rev = "v${version}";
    sha256 = "09c2q9735jsy5q1ny6rkr757vvg6nr36ix9hslb78yh9r5jlg6rb";
  };
  python-with-my-packages = python3.withPackages (p: with p; [
    kicad
    wxPython_4_1
  ]);
in
writeScriptBin "InteractiveHtmlBom" ''
${python-with-my-packages}/bin/python ${interactive-html-bom}/InteractiveHtmlBom/generate_interactive_bom.py $*
''