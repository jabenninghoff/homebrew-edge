cask "luna-secondary" do
  version "5.3.3,4813"
  sha256 "12a2db64578e82e022b1db2d877e5f0af3914cd8f4d1373ebb0befb32e28f980"

  url "https://downloads.astropad.com/luna-secondary/mac/LunaSecondary-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Luna Secondary"
  desc "Turn a computer or tablet into a second display"
  homepage "https://astropad.com/product/lunadisplay/"

  livecheck do
    url "https://s3.lunadisplay.com/downloads/luna-secondary-sparkle.xml"
    strategy :sparkle
  end

  app "Luna Secondary.app"

  zap trash: [
    "~/Library/Application Support/astropad",
    "~/Library/Application Support/com.astro-hq.LunaSecondaryMac",
    "~/Library/Caches/com.astro-hq.LunaSecondaryMac",
    "~/Library/Logs/Astropad",
    "~/Library/Preferences/com.astro-hq.LunaSecondaryMac.plist",
    "~/Library/Saved Application State/com.astro-hq.LunaSecondaryMac.savedState",
  ]
end
