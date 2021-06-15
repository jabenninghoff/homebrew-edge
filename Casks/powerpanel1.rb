cask "powerpanel1" do
  version "1.1.1"
  sha256 :no_check

  url "https://www.cyberpower.com/eu/en/File/GetFileSampleByType?fileId=SU-18070001-01"
  name "CyberPower PowerPanel Personal"
  desc "Monitor and configure UPS"
  homepage "https://www.cyberpower.com/eu/en/product/sku/powerpanel%C2%AE_for_mac#downloads"

  depends_on macos: ">= :sierra"

  app "PowerPanel.app"

  uninstall pkgutil:   "com.cpsww.ppupsd",
            launchctl: "com.cpsww.ppupsd"
end
