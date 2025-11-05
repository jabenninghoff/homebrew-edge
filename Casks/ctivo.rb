cask "ctivo" do
  version "3.6.3"
  sha256 "5153e254d764297322887e96c13a56568d17732541e3536db879f044de422780"

  url "https://github.com/mackworth/cTiVo/releases/download/#{version}/cTiVo.#{version}.zip"
  name "cTiVo"
  desc "Download and convert Tivo shows"
  homepage "https://github.com/mackworth/cTiVo"

  app "cTiVo.app"

  zap trash: [
    "~/Library/Application Support/com.cTiVo.cTiVo",
    "~/Library/Caches/com.cTiVo.cTiVo",
    "~/Library/Caches/com.crashlytics.data/com.cTiVo.cTiVo",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.cTiVo.cTiVo",
    "~/Library/Cookies/com.cTiVo.cTiVo.binarycookies",
    "~/Library/Logs/cTiVo",
    "~/Library/Preferences/com.cTiVo.cTiVo.plist",
    "~/Library/Saved Application State/com.cTiVo.cTiVo.savedState",
  ]
end
