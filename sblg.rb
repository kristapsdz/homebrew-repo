class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.4.9.tar.gz"
	sha256 "fbbf0e3beb388c2a9e761372f55912e2c9e391f0dd87fa846863c3ea75c50677"
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}"
		system "make", "install"
	end
end
