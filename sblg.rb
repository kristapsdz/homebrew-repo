class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.4.2.tar.gz"
	sha256 "0d3a6318c3080065cfaecb3e662c8fbd43c6f4196fa6576b57e96e536f64dcdc"
	def install
		system "./configure"
		system "make", "install", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{pkgshare}", "BINDIR=#{bin}"
	end
end
