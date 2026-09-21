# edge because: :repo_archived
# homebrew-core: deprecate! date: "2026-07-17", because: :repo_archived
# homebrew-core: disable! date: "2027-07-17", because: :repo_archived
class MinioMc < Formula
  desc "Replacement for ls, cp and other commands for object storage"
  homepage "https://github.com/minio/mc"
  url "https://github.com/minio/mc.git",
      tag:      "RELEASE.2025-08-13T08-35-41Z",
      revision: "7394ce0dd2a80935aded936b09fa12cbb3cb8096"
  version "2025-08-13T08-35-41Z"
  license "AGPL-3.0-or-later"
  version_scheme 1
  head "https://github.com/minio/mc.git", branch: "master"

  livecheck do
    url :stable
    regex(/^(?:RELEASE[._-]?)?([\dTZ-]+)$/i)
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/jabenninghoff/edge"
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_golden_gate: "fe0f9d7812bb33e757c289d2791d72b7c467c801c4391365e7b55c59f60e8521"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:       "9eef01e604922b7bfa6deddb2bd8a0ded16d29ea113a9b07056a4673b0d2608f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia:     "67828ab3d10564ac368eabaf325aed57f09dddb25eb3e1242086bf9d1509a925"
    sha256 cellar: :any,                 x86_64_linux:      "554724ea555a89002a8eff4a482bdd80a1897a6ad2e8abf89cb101f20a48e0c4"
  end

  depends_on "go" => :build

  conflicts_with "midnight-commander", because: "both install an `mc` binary"

  def install
    if build.head?
      system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"mc")
    else
      minio_release = stable.specs[:tag]
      minio_version = version.to_s.gsub(/T(\d+)-(\d+)-(\d+)Z/, 'T\1:\2:\3Z')
      proj = "github.com/minio/mc"

      ldflags = %W[
        -s -w
        -X #{proj}/cmd.Version=#{minio_version}
        -X #{proj}/cmd.ReleaseTag=#{minio_release}
        -X #{proj}/cmd.CommitID=#{Utils.git_head}
        -X #{proj}/cmd.CopyrightYear=#{version.major}
      ]
      system "go", "build", *std_go_args(ldflags:, output: bin/"mc")
    end
  end

  test do
    output = shell_output("#{bin}/mc --version 2>&1")
    assert_equal version.to_s, output[/(?:RELEASE[._-]?)?([\dTZ-]+)/, 1], "`version` is incorrect"

    system bin/"mc", "mb", testpath/"test"
    assert_path_exists testpath/"test"
  end
end
