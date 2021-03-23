class Sblg < Formula
	desc "simple off-line blog utility"
	homepage "https://kristaps.bsd.lv/sblg"
	url "https://kristaps.bsd.lv/sblg/snapshots/sblg-0.5.11.tar.gz"
	sha256 "f178b6c9b50f87155cf5f06a7b8511e65ffa0cfc48e5097488d12bcce69d81ed"
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}"
		system "make", "install"
	end
end
