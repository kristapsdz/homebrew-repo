class Kwebapp < Formula
	desc "web application source generator"
	homepage "https://kristaps.bsd.lv/kwebapp"
	url "https://kristaps.bsd.lv/kwebapp/snapshots/kwebapp-0.6.2.tar.gz"
	sha256 "be8169e2be27b7cef810e142995ee4062f09daf1867d19afbc1385850851bffa"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}"
		system "make", "install"
	end
end
