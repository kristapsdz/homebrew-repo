class Lowdown < Formula
  desc "simple Markdown translator"
  homepage "https://kristaps.bsd.lv/lowdown"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.1.9.tar.gz"
  sha256 "3b809f9cb4cf6912bb2f70666cdf186d2553f1abfd549ab537b782b4688c4e71"
  def install
    system "./configure"
    system "make", "install", "BINDIR=#{bin}", "LIBDIR=#{lib}", "INCLUDEDIR=#{include}", "MANDIR=#{man}"
  end
end
