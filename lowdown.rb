class Lowdown < Formula
  desc "simple Markdown translator"
  homepage "https://kristaps.bsd.lv/lowdown"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.2.6.tar.gz"
  sha256 "173febbb750e8944972c3e7b67d86c9b4d5b69d63362f30835db279aa72a4518"
  def install
    system "./configure"
    system "make", "install", "BINDIR=#{bin}", "LIBDIR=#{lib}", "INCLUDEDIR=#{include}", "MANDIR=#{man}"
  end
end
