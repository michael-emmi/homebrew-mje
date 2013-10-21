require 'formula'

class OcamlFindlib < Formula
  homepage 'http://projects.camlcity.org/projects/findlib.html'
  url 'http://download.camlcity.org/download/findlib-1.4.tar.gz'
  sha1 '07048076758e4ca892f06ff535d7cab033833bde'
  
  depends_on 'objective-caml'

  def install
    system "./configure"
    system "make"
    system "make install"
    bin.install "src/findlib/ocamlfind"
  end

  test do
    system "ocamlfind ocamlc"
  end
end
