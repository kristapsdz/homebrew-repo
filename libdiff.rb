class Libdiff < Formula
	desc "generate arbitrary sequence diffs"
	homepage "https://github.com/kristapsdz/libdiff"
	url "https://kristaps.bsd.lv/libdiff/snapshots/libdiff-0.1.0.tar.gz"
	sha256 "2012d2eae9ecaf9717c77ecefd9bdff4e38f485d8b9ad8f916cff1fdf1151512"
	def install
		system "./configure", "PREFIX=#{prefix}", "LIBDIR=#{lib}", "MANDIR=#{man}", "INCLUDEDIR=#{include}"
		system "make", "install"
	end
end
