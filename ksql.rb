class Ksql < Formula
	desc "yet another C SQLite wrapper"
	homepage "https://kristaps.bsd.lv/ksql"
	url "https://kristaps.bsd.lv/ksql/snapshots/ksql-0.3.5.tar.gz"
	sha256 "8db29bf3af8a8af0b151efbcc0e9a908851e03b387601fda185cb06326501cb5"
	depends_on "sqlite" => :build
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}"
		system "make", "install"
	end
end
