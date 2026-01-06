cask "magic-window-screen-saver" do
  version "3.1"
  sha256 :no_check

  url "https://magicwindowmac.sfo2.cdn.digitaloceanspaces.com/apps/MagicWindowScreenSaverPlugin.dmg",
      verified: "magicwindowmac.sfo2.cdn.digitaloceanspaces.com"
  name "Magic Window Screen Saver"
  desc "Screen saver plug-in"
  homepage "https://www.jetsoncreative.com/screensaverplugin/"

  livecheck do
    url :homepage
    regex(/Download Magic Window Mac Screen Saver Plug-in \(v(\d+(?:\.\d+)+)\)/i)
    strategy :page_match
  end

  screen_saver "Magic Window.saver"

  caveats <<~EOS
    For macOS Catalina and newer you must provide Apple’s legacyScreenSaver process with full
    disk access to allow the screen saver to access your downloaded scenes.
  EOS
end
