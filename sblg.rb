class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.3.10.tar.gz"
	sha256 "bd77dfc46e084994746039b2dd31859ae98e422d70ca2f09c5f3588525b58eea"
	def install
		system "make", "install", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{pkgshare}", "BINDIR=#{bin}"
	end
end
