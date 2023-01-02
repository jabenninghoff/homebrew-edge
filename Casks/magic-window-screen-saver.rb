cask "magic-window-screen-saver" do
  version "3.0"
  sha256 :no_check

  url "https://stackpath.24hourwallpaper.com/apps/MagicWindowScreenSaverPlugin.dmg",
      verified: "stackpath.24hourwallpaper.com"
  name "Magic Window Screen Saver"
  desc "Screen saver plug-in"
  homepage "https://www.jetsoncreative.com/screensaverplugin/"

  screen_saver "Magic Window.saver"

  caveats <<~EOS
    For macOS Catalina you must provide Apple’s legacyScreenSaver process with full disk access
    to allow the screen saver to access your downloaded scenes.
  EOS
end
