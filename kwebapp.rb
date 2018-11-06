class Kwebapp < Formula
	desc "web application source generator"
	homepage "https://kristaps.bsd.lv/kwebapp"
	url "https://kristaps.bsd.lv/kwebapp/snapshots/kwebapp-0.6.5.tar.gz"
	sha256 "e5c596af8109520d866f47a2f4033965d46aa7e625051482d3c4190b8a0fc8d2"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}"
		system "make", "install"
	end
end
