cask "powerpanel@1" do
  version "1.1.0"
  sha256 "9ef3160ad516cf246647a11bdbeaa756a98b2c0d9915ccabbf0d6cc72bebdf51"

  url "https://dl4jz3rbrsfum.cloudfront.net/software/ppm#{version.no_dots}.dmg",
      verified: "dl4jz3rbrsfum.cloudfront.net"
  name "CyberPower PowerPanel Personal"
  desc "Monitor and configure UPS"
  homepage "https://www.cyberpowersystems.com/products/software/power-panel-personal/"

  livecheck do
    skip "legacy version"
  end

  app "PowerPanel.app"

  uninstall launchctl: "com.cpsww.ppupsd",
            pkgutil:   "com.cpsww.ppupsd"

  caveats do
    requires_rosetta
  end
end
