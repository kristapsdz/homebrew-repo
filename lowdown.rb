class Lowdown < Formula
	desc "simple Markdown translator"
	homepage "https://kristaps.bsd.lv/lowdown"
	url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.4.0.tar.gz"
	sha256 "d075ddb3c1fb9908d1b72c395429a0faebd3940f9c995e817eb2e93923c9ccaa"
	depends_on "kristapsdz/repo/libdiff" => :build
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}", "INCLUDEDIR=#{include}", "LIBDIR=#{lib}"
		system "make", "install"
	end
end
