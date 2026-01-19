cask "r-gfortran" do
  version "14.2,2.1"
  sha256 "ec462d465f093eeee0623d2b5d327bd1038313b985034b766462957e36d7aadd"

  url "https://github.com/R-macos/gcc-#{version.major}-branch/releases/download/gcc-#{version.csv.first}-darwin-r#{version.csv.second}/gfortran-#{version.csv.first}-universal.pkg",
      verified: "github.com/R-macos/gcc-#{version.major}-branch/releases/download/"
  name "r-gfortran"
  desc "GNU Fortran release used by CRAN"
  homepage "https://mac.r-project.org/tools/"

  # this won't detect major version changes as R-macos uses a new repository for each version of GCC
  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+)-darwin-r(\d+(?:\.\d+)+)/)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "gfortran-#{version.csv.first}-universal.pkg"

  uninstall pkgutil: "org.r-project.universal.gfortran"

  # No zap stanza required
end
