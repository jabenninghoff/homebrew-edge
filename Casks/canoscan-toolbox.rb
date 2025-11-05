cask "canoscan-toolbox" do
  version "4.9.3.4"
  sha256 "fa5442c719771b87dcefd59426efcf1743e8e024287a310eb1518cbd4c4907aa"

  url "https://gdlp01.c-wss.com/gds/1/0900002921/03/cstbosx#{version.no_dots}ej4.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "CanoScan Toolbox"
  desc "Scanner software"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/scanners/support-scanners-canoscan-series/canoscan-lide-500f"

  livecheck do
    skip "legacy version"
  end

  pkg "CanoScan Toolbox4.9.3.4 Installer.pkg"

  uninstall pkgutil: 'com.canon.CanoScan\ Toolbox\ 4.9.3',
            trash:   "~/Desktop/CanoScan Toolbox 4.9"

  zap trash: [
    "~/Library/Preferences/CanoScan Toolbox 4.9",
    "~/Library/Preferences/com.canon.CanoScan Toolbox 4.9.plist",
    "~/Library/Preferences/com.canon.CanoScan Toolbox 4.9.plist.lockfile",
    "~/Library/Saved Application State/com.canon.CanoScan Toolbox 4.9.savedState",
  ]
end
