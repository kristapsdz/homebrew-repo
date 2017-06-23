class Divecmd < Formula
	desc "download and process dive computer data"
	homepage "https://kristaps.bsd.lv/divecmd"
	url "https://kristaps.bsd.lv/divecmd/snapshots/divecmd-0.0.9.tar.gz"
	sha256 "93cf5e428a803726acbde8857dea562e7a4a4b5f466e58a5f73188980baaecdf"
	depends_on "libdivecomputer" => :build
	def install
		system "./configure"
		system "make", "install", "CFLAGS=-I#{include}", "PREFIX=#{prefix}", "LDFLAGS=-L#{lib}", "MANDIR=#{man}", "BINDIR=#{bin}"
	end
end
