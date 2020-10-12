cask "ctivo" do
  version "3.4.1"
  sha256 "d5c5a307702abe1239baeb74e28a405ffed14af88d83cf7f38bc501b208900f3"

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
