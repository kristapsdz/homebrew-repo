class Lowdown < Formula
	desc "simple Markdown translator"
	homepage "https://kristaps.bsd.lv/lowdown"
	url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.7.5.tar.gz"
	sha256 "7ca5f791f04d49f78bc5af0bc8b1c3271ba40a4fc932ec6fb1c1bcb73dc4879f"
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}", "INCLUDEDIR=#{include}", "LIBDIR=#{lib}"
		system "make", "install"
	end
end
