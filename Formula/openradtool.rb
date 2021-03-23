class Openradtool < Formula
	desc "application source generator"
	homepage "https://kristaps.bsd.lv/openradtool"
	url "https://kristaps.bsd.lv/openradtool/snapshots/openradtool-0.12.0.tar.gz"
	sha256 "d6f975ae1a66a3cbabe4494e97dfc10919c7eb3b4d12b263c87aa8f401e261be"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}"
		system "make", "install"
	end
end
