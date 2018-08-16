class Divecmd < Formula
	desc "download and process dive computer data"
	homepage "https://kristaps.bsd.lv/divecmd"
	url "https://kristaps.bsd.lv/divecmd/snapshots/divecmd-0.1.1.tar.gz"
	sha256 "c9ec4c1838f1780ffe6b85b157384c94b3d114ddcd5a1c7f03cad88bf1f462fa"
	depends_on "libdivecomputer" => :build
	depends_on "groff"
	depends_on "grap"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "PREFIX=#{prefix}", "LDFLAGS=-L#{lib}", "MANDIR=#{man}"
		system "make", "install", "GROFF=#{HOMEBREW_PREFIX}/bin/groff"
	end
end
