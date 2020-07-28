class Apg < Formula
  desc "Automated Password Generator"
  homepage "https://github.com/jabenninghoff/apg"
  url "https://github.com/jabenninghoff/apg/archive/v2.2.3.tar.gz"
  sha256 "33a3efa2d02ffb95e00175c1e23f9f32f20a97889087e67f6086d4fa4c3854a1"
  license "BSD-3-Clause"

  def install
    system "make", "standalone",
                   "CC=#{ENV.cc}",
                   "FLAGS=#{ENV.cflags}",
                   "LIBS=", "LIBM="

    bin.install "apg", "apgbfm"
    man1.install "doc/man/apg.1", "doc/man/apgbfm.1"
  end

  test do
    system bin/"apg", "-a", "1", "-M", "n", "-n", "3", "-m", "8", "-E", "23456789"
  end
end
