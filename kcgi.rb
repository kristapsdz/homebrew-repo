class Kcgi < Formula
	desc "minimal CGI and FastCGI library in C"
	homepage "https://kristaps.bsd.lv/kcgi"
	url "https://kristaps.bsd.lv/kcgi/snapshots/kcgi-0.10.7.tgz"
	sha256 "7bb64212262de06c1203a326cf5873aebac3b80fa35ee9dc7e13a494a762723f"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}", "SHAREDIR=#{share}", "SBINDIR=#{sbin}"
		system "make", "install"
	end
end
