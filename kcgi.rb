class Kcgi < Formula
	desc "minimal CGI and FastCGI library in C"
	homepage "https://kristaps.bsd.lv/kcgi"
	url "https://kristaps.bsd.lv/kcgi/snapshots/kcgi-0.9.9.tgz"
	sha256 ""
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}", "SHAREDIR=#{share}", "SBINDIR=#{sbin}"
		system "make", "install"
	end
end
