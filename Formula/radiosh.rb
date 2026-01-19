class Radiosh < Formula
  desc "Command-line controller for the Griffin radioSHARK"
  homepage "https://www.floodgap.com/software/radiosh/"
  url "https://www.floodgap.com/software/radiosh/radiosh-src.zip"
  version "1.0"
  sha256 "792942156fafb67e91e343cfc94ecb84fe9edf212aa0515fa0fb76b943c09976"
  license "BSD-3-Clause"

  livecheck do
    url :homepage
    regex(%r{http://www\.floodgap.com/software/radiosh/ -- version (\d+(?:\.\d+)+)}i)
  end

  depends_on xcode: :build

  def install
    system "make", "radiosh64"
    bin.install "radiosh"
  end

  test do
    assert_path_exists bin/"radiosh"
    assert_predicate bin/"radiosh", :executable?

    run_output = shell_output("#{bin}/radiosh 2>&1", 1)
    assert_match "Usage: radiosh [-v] [-b#] [-p#] [-r#] [-a#] [-f#]", run_output
    assert_match "    -v    Verbosity/display detected device version.", run_output
    assert_match "    -b    Set the blue light brightness, values are 0 (off) to 127.", run_output
    assert_match "    -p    Set the blue light pulse speed, values are 0 (off) to 127 (slow).", run_output
    assert_match "    -r    Set the red light brightness, values are 0 (off) to 127.", run_output
    assert_match "    -a    Set the radio to AM and tune to frequency in kHz (0=radio off).", run_output
    assert_match "    -f    Set the radio to FM and tune to frequency in MHz (0=radio off).", run_output
    assert_match "Any combination can be specified at once.", run_output
    assert_match "", run_output
    assert_match "Copyright (C) 2018 Cameron Kaiser, Quentin D. Carnicelli,", run_output
    assert_match "Michael Rolig, Justin Yunke and Hisaaki Shibata. All rights reserved.", run_output
    assert_match "http://www.floodgap.com/software/radiosh/ -- version 1.0", run_output
  end
end
