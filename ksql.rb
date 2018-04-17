class Ksql < Formula
	desc "yet another C SQLite wrapper"
	homepage "https://kristaps.bsd.lv/ksql"
	url "https://kristaps.bsd.lv/ksql/snapshots/ksql-0.2.5.tar.gz"
	sha256 "0a5536c53c556cf21b5d3db438c6e67972127a83490cb73c6e83cc72e51b6f0e"
	depends_on "sqlite" => :build
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}"
		system "make", "install"
	end
end
