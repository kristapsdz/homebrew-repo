class Lowdown < Formula
	desc "simple Markdown translator"
	homepage "https://kristaps.bsd.lv/lowdown"
	url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.4.1.tar.gz"
	sha256 "a5fb2fa51da9c2dcbd22332e71a8b39fc838b90299e0ac8cdfffd2bc7934fcec"
	depends_on "kristapsdz/repo/libdiff" => :build
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}", "INCLUDEDIR=#{include}", "LIBDIR=#{lib}"
		system "make", "install"
	end
end
