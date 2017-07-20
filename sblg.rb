class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.4.4.tar.gz"
	sha256 "41d68f3735cc6c6b17084468d02601797b850bf0891f29328876e60fda3cecc6"
	def install
		system "./configure"
		system "make", "install", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{pkgshare}", "BINDIR=#{bin}"
	end
end
