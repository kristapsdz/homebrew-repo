class Divecmd < Formula
	desc "download and process dive computer data"
	homepage "https://kristaps.bsd.lv/divecmd"
	url "https://kristaps.bsd.lv/divecmd/snapshots/divecmd-0.0.10.tar.gz"
	sha256 "bd3f981c2d8888e1f17f11c11f72949710e71a2f657cef1e2691a7ac996e457d"
	depends_on "libdivecomputer" => :build
	depends_on "groff" => :run
	depends_on "grap" => :run
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "PREFIX=#{prefix}", "LDFLAGS=-L#{lib}", "MANDIR=#{man}"
		system "make", "install", "GROFF=#{HOMEBREW_PREFIX}/bin/groff"
	end
end
