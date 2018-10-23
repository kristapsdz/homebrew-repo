class Kwebapp < Formula
	desc "web application source generator"
	homepage "https://kristaps.bsd.lv/kwebapp"
	url "https://kristaps.bsd.lv/kwebapp/snapshots/kwebapp-0.6.3.tar.gz"
	sha256 "43d3000620429fe51b879befc37298a52eab28319edf0cf211c57510122b7812"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}"
		system "make", "install"
	end
end
