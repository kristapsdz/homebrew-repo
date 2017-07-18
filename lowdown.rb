class Lowdown < Formula
  desc "simple Markdown translator"
  homepage "https://kristaps.bsd.lv/lowdown"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.1.12.tar.gz"
  sha256 "0a87c983414f28a1c11e80cedcef021d0113a363c7a2d6517827dab34571c253"
  def install
    system "./configure"
    system "make", "install", "BINDIR=#{bin}", "LIBDIR=#{lib}", "INCLUDEDIR=#{include}", "MANDIR=#{man}"
  end
end
