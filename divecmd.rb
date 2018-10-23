class Divecmd < Formula
	desc "download and process dive computer data"
	homepage "https://kristaps.bsd.lv/divecmd"
	url "https://kristaps.bsd.lv/divecmd/snapshots/divecmd-0.1.5.tar.gz"
	sha256 "b6586a5c1ed82b511e910df1ef949dab2ce03a10640a46041deef18a62a5b6e1"
	depends_on "libdivecomputer" => :build
	depends_on "groff"
	depends_on "grap"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "PREFIX=#{prefix}", "LDFLAGS=-L#{lib}", "MANDIR=#{man}"
		system "make", "install", "GROFF=#{HOMEBREW_PREFIX}/bin/groff"
	end
end
