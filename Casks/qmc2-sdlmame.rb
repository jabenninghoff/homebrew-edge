# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "qmc2-sdlmame" do
  arch arm: "AppleSilicon", intel: "MacIntel"
  version "244,3"
  sha256 arm:   "9c63c63c6027df1b4c5aeb9658434bcdf712e1800f65b97803ff0a3d9efed12d",
         intel: "7df06b9989657cd3326b62aabff9e6591761c555ac30e5960ce209f2b628e598"

  url "https://github.com/estefan3112/qmc2-mame-fe-MacOS/releases/download/v#{version.csv.first}v#{version.csv.second}/qmc2v#{version.csv.first}v#{version.csv.second}-#{arch}.zip"
  name "qmc2-sdlmame"
  desc "GUI front-end for MAME"
  homepage "https://github.com/estefan3112/qmc2-mame-fe-MacOS"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
#    url ""
#    strategy ""
  end

  conflicts_with cask: "qmc2"


#  depends_on macos: ""

  app "qmc2-#{arch} #{version.csv.second}/qmc2-sdlmame.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
#  zap trash: ""
end
