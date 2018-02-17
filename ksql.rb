class Ksql < Formula
	desc "yet another C SQLite wrapper"
	homepage "https://kristaps.bsd.lv/ksql"
	url "https://kristaps.bsd.lv/ksql/snapshots/ksql-0.2.3.tar.gz"
	sha256 "8b0a08e5794dfd29e92a9c654a7ed3502ca6ada5e2c2435d4d579cb16554b542"
	depends_on "sqlite" => :build
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}"
		system "make", "install"
	end
end
