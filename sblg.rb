class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.4.12.tar.gz"
	sha256 "38d786d5e2b848cb3e0e86ad3ab788d84f1c4cc7cb3047c4486ad49136f28dd1"
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}"
		system "make", "install"
	end
end
