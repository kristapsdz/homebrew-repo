class Kcgi < Formula
	desc "minimal CGI and FastCGI library in C"
	homepage "https://kristaps.bsd.lv/kcgi"
	url "https://kristaps.bsd.lv/kcgi/snapshots/kcgi-0.9.9.tgz"
	sha256 "84a98ed6d0f2a8df682be5c8a2b47a7d95b7fdb598cc103f02880f520f901dc5"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}", "SHAREDIR=#{share}", "SBINDIR=#{sbin}"
		system "make", "install"
	end
end
