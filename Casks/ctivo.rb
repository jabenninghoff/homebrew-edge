cask "ctivo" do
  version "3.5.1"
  sha256 "34e05fd4b7ca195cec5968ba5689ed822a3172fca7a0f348fadcfba93ed239e1"

  url "https://github.com/mackworth/cTiVo/releases/download/#{version}/cTiVo.app.zip"
  appcast "https://github.com/mackworth/cTiVo/releases.atom"
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
