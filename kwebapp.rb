class Kwebapp < Formula
	desc "web application source generator"
	homepage "https://kristaps.bsd.lv/kwebapp"
	url "https://kristaps.bsd.lv/kwebapp/snapshots/kwebapp-0.6.14.tar.gz"
	sha256 "ea36334a143300055b507840a9ea190455f2ae914801d8c8847ff82ae194611e"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}"
		system "make", "install"
	end
end
