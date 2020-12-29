class Openradtool < Formula
	desc "application source generator"
	homepage "https://kristaps.bsd.lv/openradtool"
	url "https://kristaps.bsd.lv/openradtool/snapshots/openradtool-0.11.9.tar.gz"
	sha256 "31bc010ff42e2dc7c04e60efd2d2b229df3820980adce97068daec56f6686cab"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}"
		system "make", "install"
	end
end
