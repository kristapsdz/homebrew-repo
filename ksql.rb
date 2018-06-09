class Ksql < Formula
	desc "yet another C SQLite wrapper"
	homepage "https://kristaps.bsd.lv/ksql"
	url "https://kristaps.bsd.lv/ksql/snapshots/ksql-0.3.2.tar.gz"
	sha256 "960f8b80e7a57091b393a62ab7b274b6ee3aa05950f03cad00dd6523af4cb47b"
	depends_on "sqlite" => :build
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}"
		system "make", "install"
	end
end
