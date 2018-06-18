class Libdiff < Formula
	desc "generate arbitrary sequence diffs"
	homepage "https://github.com/kristapsdz/libdiff"
	url "https://kristaps.bsd.lv/libdiff/snapshots/libdiff-0.1.0.tar.gz"
	sha256 "a810c50948f20c57df82769c37e290bad5201b960ee76c7ecf8d288beaf77616"
	def install
		system "./configure", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}"
		system "make", "install"
	end
end
