class Kcgi < Formula
	desc "minimal CGI and FastCGI library in C"
	homepage "https://kristaps.bsd.lv/kcgi"
	url "https://kristaps.bsd.lv/kcgi/snapshots/kcgi-0.10.3.tgz"
	sha256 "f6b57245f57bb16561d03c62a61472a480ceace4e332182b80a61d65ec2ab7f0"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}", "SHAREDIR=#{share}", "SBINDIR=#{sbin}"
		system "make", "install"
	end
end
