class Kcgi < Formula
	desc "minimal CGI and FastCGI library in C"
	homepage "https://kristaps.bsd.lv/kcgi"
	url "https://kristaps.bsd.lv/kcgi/snapshots/kcgi-0.12.4.tgz"
	sha256 "e9950cda9a118a778b79bcde5a5d585a78dec4cb259731e6d9e866bcae8f3346"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}", "SHAREDIR=#{share}", "SBINDIR=#{sbin}"
		system "make", "install"
	end
end
