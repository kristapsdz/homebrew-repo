class Ksql < Formula
	desc "yet another C SQLite wrapper"
	homepage "https://kristaps.bsd.lv/ksql"
	url "https://kristaps.bsd.lv/ksql/snapshots/ksql-0.1.1.tar.gz"
	sha256 "168c2002b1dbb66c1a5b0a248cf492313d37e413e5eb8ff1b7fb8c160b900471"
	depends_on "sqlite" => :build
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}"
		system "make", "install"
	end
end
