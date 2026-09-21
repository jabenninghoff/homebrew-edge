# edge because: :unmaintained
class Apg < Formula
  desc "Automated Password Generator"
  homepage "https://github.com/jabenninghoff/apg"
  url "https://github.com/jabenninghoff/apg/archive/refs/tags/v2.2.3.tar.gz"
  sha256 "33a3efa2d02ffb95e00175c1e23f9f32f20a97889087e67f6086d4fa4c3854a1"
  license "BSD-3-Clause"

  bottle do
    root_url "https://ghcr.io/v2/jabenninghoff/edge"
    rebuild 3
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "c5b4cd8d6f6deb3cf80bd2a62e637292b1f1a71cb6661f4637bdf095b036405d"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:       "f82061208d654dfa0bf35ab743c689ae82ac3cd6a19779582a09e3725ca80add"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:     "d1d060414028a1a84a3356a5428b13828c69fecf48adecdd7f00cc6618385a68"
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
