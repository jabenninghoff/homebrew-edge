cask "magic-window-screen-saver" do
  version "2.1.1"
  sha256 "6161ed89ff2cd310a9ca4ac70350e55d30363b77a3a9db5fd7ac445e4e0e899d"

  # magicwindowmac.jetsoncreativell.netdna-cdn.com was verified as official when first introduced to the cask
  url "http://magicwindowmac.jetsoncreativell.netdna-cdn.com/apps/MagicWindowScreenSaverPlugin.dmg"
  name "Magic Window Screen Saver"
  desc "Screen saver plug-in"
  homepage "https://www.jetsoncreative.com/screensaverplugin/"

  screen_saver "Magic Window.saver"

  caveats <<~EOS
    For macOS Catalina you must provide Apple’s legacyScreenSaver process with full disk access
    to allow the screen saver to access your downloaded scenes.
  EOS
end
