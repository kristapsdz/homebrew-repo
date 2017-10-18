class Kcgi < Formula
	desc "minimal CGI and FastCGI library in C"
	homepage "https://kristaps.bsd.lv/kcgi"
	url "https://kristaps.bsd.lv/kcgi/snapshots/kcgi-0.9.8.tgz"
	sha256 "13f48ab12304a51fef13459ae06177b8a41a2cebc4962616729d5afdce51328e"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}", "DATADIR=#{pkgshare}", "SBINDIR=#{sbin}"
		system "make", "install"
	end
end
