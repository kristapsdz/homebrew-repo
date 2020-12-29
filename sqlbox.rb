class Sqlbox < Formula
	desc "database access library"
	homepage "https://kristaps.bsd.lv/sqlbox"
	url "https://kristaps.bsd.lv/sqlbox/snapshots/sqlbox-0.1.12.tar.gz"
	sha256 "4bf3aca36754306f2a5dcdf90a8299273edecbfec9fe13e0d1358759fe7faab0"
	depends_on "sqlite" => :build
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}"
		system "make", "install"
	end
end
