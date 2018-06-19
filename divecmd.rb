class Divecmd < Formula
	desc "download and process dive computer data"
	homepage "https://kristaps.bsd.lv/divecmd"
	url "https://kristaps.bsd.lv/divecmd/snapshots/divecmd-0.0.15.tar.gz"
	sha256 "75bba62a3274d0f182f9b1956d18e66b9b09d520e6b3285afb1e98e3474245e1"
	depends_on "libdivecomputer" => :build
	depends_on "groff"
	depends_on "grap"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "PREFIX=#{prefix}", "LDFLAGS=-L#{lib}", "MANDIR=#{man}"
		system "make", "install", "GROFF=#{HOMEBREW_PREFIX}/bin/groff"
	end
end
