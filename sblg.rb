class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.4.1.tar.gz"
	sha256 "cfdd88ef0ae3b5afdb72218c2f483eb79dbb7e06da0a9d51ca69eb584aecdae5"
	def install
          system "./configure"
	  system "make", "install", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{pkgshare}", "BINDIR=#{bin}"
	end
end
