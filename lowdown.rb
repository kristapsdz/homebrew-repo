class Lowdown < Formula
  desc "simple Markdown translator"
  homepage "https://kristaps.bsd.lv/lowdown"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.1.10.tar.gz"
  sha256 "eef2fcb2f7779e36d0a609c0ec2eb089134057fcb1a26a93e99350a7d8c2d729"
  def install
    system "./configure"
    system "make", "install", "BINDIR=#{bin}", "LIBDIR=#{lib}", "INCLUDEDIR=#{include}", "MANDIR=#{man}"
  end
end
