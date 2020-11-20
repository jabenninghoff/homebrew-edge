cask "ctivo" do
  version "3.4.3"
  sha256 "78dde65d6c54afa7a7bf9071e4926e752ce02b3ae82d5688b19545bed90c44a5"

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
