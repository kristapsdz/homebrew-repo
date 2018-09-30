class Divecmd < Formula
	desc "download and process dive computer data"
	homepage "https://kristaps.bsd.lv/divecmd"
	url "https://kristaps.bsd.lv/divecmd/snapshots/divecmd-0.1.3.tar.gz"
	sha256 "28c560eb926b57ae59d2488a4b0ec95a5ec07c60c9ca39528c836669a9252481"
	depends_on "libdivecomputer" => :build
	depends_on "groff"
	depends_on "grap"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "PREFIX=#{prefix}", "LDFLAGS=-L#{lib}", "MANDIR=#{man}"
		system "make", "install", "GROFF=#{HOMEBREW_PREFIX}/bin/groff"
	end
end
