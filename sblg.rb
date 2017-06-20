class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.4.3.tar.gz"
	sha256 "a29627da81835e089e40534a928875f628278e89173bb586193907162233509f"
	def install
		system "./configure"
		system "make", "install", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{pkgshare}", "BINDIR=#{bin}"
	end
end
