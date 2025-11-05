cask "luna-display" do
  version "5.3.6,4927"
  sha256 "095d28b8e21c5f0997ce67963b5d72936ebf29140f4d341a71f162df6099658c"

  url "https://downloads.astropad.com/luna/mac/LunaDisplay-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Luna Display"
  desc "Use your iPad as a wireless second display"
  homepage "https://astropad.com/product/lunadisplay/"

  livecheck do
    url "https://s3.lunadisplay.com/downloads/sparkle.xml"
    strategy :sparkle
  end

  app "Luna Display.app"

  uninstall quit: "com.astro-hq.LunaDisplayMac"

  zap trash: [
    "~/Library/Application Support/astropad",
    "~/Library/Application Support/com.astro-hq.LunaDeviceSetupService",
    "~/Library/Application Support/com.astro-hq.LunaDisplayMac",
    "~/Library/Application Support/LunaDeviceSetupService",
    "~/Library/Application Support/LunaDisplay",
    "~/Library/Caches/com.astro-hq.LunaDeviceSetupService",
    "~/Library/Caches/com.astro-hq.LunaDisplayMac",
    "~/Library/Logs/Astropad",
    "~/Library/Preferences/com.astro-hq.AstroLauncher.shared.plist",
    "~/Library/Preferences/com.astro-hq.LunaDisplayMac.plist",
    "~/Library/Saved Application State/com.astro-hq.LunaDisplayMac.savedState",
  ]
end
