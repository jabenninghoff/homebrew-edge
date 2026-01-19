cask "qmc2-sdlmame" do
  arch arm: "AppleSilicon", intel: "MacIntel"

  version "244v4"
  sha256 arm:   "7546fce99615448766a0b5b6476b984c790fe841fa80d10e300f97cd992667fb",
         intel: "a6ab3917e36730c604b6319a2ca33ac3cca9d87845924d55aa3eb6aac065c9aa"

  url "https://github.com/estefan3112/qmc2-mame-fe-MacOS/releases/download/v#{version}/qmc2v#{version}-#{arch}.zip"
  name "qmc2-sdlmame"
  desc "GUI front-end for MAME"
  homepage "https://github.com/estefan3112/qmc2-mame-fe-MacOS"

  conflicts_with cask: "qmc2"
  depends_on formula: "mame"

  app "qmc2v#{version}-#{arch}/qmc2-sdlmame.app"
  artifact "qmc2v#{version}-#{arch}/qmc2", target: "/Library/Application Support/qmc2"

  uninstall rmdir: "/Library/Application Support/qmc2"

  zap trash: "~/Library/Application Support/qmc2"
end
