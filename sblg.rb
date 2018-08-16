class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.4.15.tar.gz"
	sha256 "282c08206d075777c22e8ffddf179a5a17aa89a555e6ff69a8aba4b55845cc9b"
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}"
		system "make", "install"
	end
end
