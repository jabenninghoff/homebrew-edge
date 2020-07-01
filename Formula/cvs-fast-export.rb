class CvsFastExport < Formula
  desc "Export an RCS or CVS history as a fast-import stream"
  homepage "http://www.catb.org/~esr/cvs-fast-export/"
  url "http://www.catb.org/~esr/cvs-fast-export/cvs-fast-export-1.55.tar.gz"
  sha256 "af58e16667c6e02e8431ff666effe306d3b30086fab483170257890da1afc21b"

  depends_on "asciidoc" => :build
  depends_on "docbook" => :build

  def install
    # otherwise asciidoc will fail to find docbook
    ENV["XML_CATALOG_FILES"] = etc/"xml/catalog"

    # warning: make takes an unusually long time to complete
    system "make", "cvs-fast-export", "man"
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "cvs-fast-export: version #{version}", shell_output("#{bin}/cvs-fast-export --version")
  end
end
