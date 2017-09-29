class Lowdown < Formula
  desc "simple Markdown translator"
  homepage "https://kristaps.bsd.lv/lowdown"
  url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.2.6.tar.gz"
  sha256 "ad9efa2fb55256927faf3c15506a9b3a26fd168ddde684217fce23ef79c81ea9"
  def install
    system "./configure"
    system "make", "install", "BINDIR=#{bin}", "LIBDIR=#{lib}", "INCLUDEDIR=#{include}", "MANDIR=#{man}"
  end
end
