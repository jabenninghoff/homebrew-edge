# edge because: :unmaintained
class Apg < Formula
  desc "Automated Password Generator"
  homepage "https://github.com/jabenninghoff/apg"
  url "https://github.com/jabenninghoff/apg/archive/refs/tags/v2.2.3.tar.gz"
  sha256 "33a3efa2d02ffb95e00175c1e23f9f32f20a97889087e67f6086d4fa4c3854a1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://ghcr.io/v2/jabenninghoff/edge"
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "6918a6a6b876a07c9b080c958bee50b451ccdc974369f1f4bc6435ea142ace78"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6320877016226fec6cf989c4c860a259cccaa799291ad1cc5dcbf7801c2f18b3"
  end

  depends_on :macos # build fails on Linux x86_64

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
