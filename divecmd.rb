class Divecmd < Formula
	desc "download and process dive computer data"
	homepage "https://kristaps.bsd.lv/divecmd"
	url "https://kristaps.bsd.lv/divecmd/snapshots/divecmd-0.0.10.tar.gz"
	sha256 "275ad350f2f4877f02e58de069fbe13cbae48ae223bd527ce279f83c48f195fc"
	depends_on "libdivecomputer" => :build
	depends_on "groff" => :run
	depends_on "grap" => :run
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "PREFIX=#{prefix}", "LDFLAGS=-L#{lib}", "MANDIR=#{man}"
		system "make", "install", "GROFF=#{HOMEBREW_PREFIX}/bin/groff"
	end
end
