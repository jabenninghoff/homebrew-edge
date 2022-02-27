cask "rstudio2021" do
  version "2021.09.2,382"
  sha256 "ae18a925b11f03f0913294c666bc76cebfd8a17a6ade7aed0acb1d5c9241fd50"

  url "https://rstudio-desktop.s3.amazonaws.com/desktop/macos/RStudio-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "rstudio-desktop.s3.amazonaws.com/"
  name "RStudio"
  desc "Data science software focusing on R and Python"
  homepage "https://www.rstudio.com/"

  livecheck do
    skip "legacy version for Mojave"
  end

  conflicts_with cask: "homebrew/cask-versions/rstudio-preview"
  depends_on macos: ">= :high_sierra"

  app "RStudio.app"

  zap trash: "~/.rstudio-desktop"

  caveats <<~EOS
    #{token} depends on R. The R Project provides official binaries:

      brew install --cask r

    Alternatively, the Homebrew-compiled version of R omits the GUI app:

      brew install r
  EOS
end
