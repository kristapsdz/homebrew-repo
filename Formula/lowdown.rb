class Lowdown < Formula
	desc "simple Markdown translator"
	homepage "https://kristaps.bsd.lv/lowdown"
	url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-1.0.0.tar.gz"
	sha256 "a7c9dbbd40e3e9d9296ff6ef6ac54fec83b1abe54db7b6113cd9c0f692a20c13"
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}", "INCLUDEDIR=#{include}", "LIBDIR=#{lib}"
		system "make", "install"
	end
end
