class Divecmd < Formula
	desc "download and process dive computer data"
	homepage "https://kristaps.bsd.lv/divecmd"
	url "https://kristaps.bsd.lv/divecmd/snapshots/divecmd-0.0.13.tar.gz"
	sha256 "6a23d01c6dc163ca1dbf79967747045e19338826bdd0c91a6bb21e67bd900908"
	depends_on "libdivecomputer" => :build
	depends_on "groff" => :run
	depends_on "grap" => :run
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "PREFIX=#{prefix}", "LDFLAGS=-L#{lib}", "MANDIR=#{man}"
		system "make", "install", "GROFF=#{HOMEBREW_PREFIX}/bin/groff"
	end
end
