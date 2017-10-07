class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.4.6.tar.gz"
	sha256 "f95bbf3c5a42fe93d100f9f95b37d7138a5fa4a597a0b26f259870ff4e1a7a0d"
	def install
		system "./configure"
		system "make", "install", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{pkgshare}", "BINDIR=#{bin}"
	end
end
