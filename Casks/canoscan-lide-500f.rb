cask "canoscan-lide-500f" do
  version "11.2.5.1"
  sha256 "8ffeef127c9db525fdbebad7f569bcf89065b2c315731b72b5f7f8be23a4ffe9"

  url "https://gdlp01.c-wss.com/gds/9/0900003219/04/lide500fosx#{version.no_dots}en.dmg",
      verified: "gdlp01.c-wss.com/gds/"
  name "CanoScan LiDE 500F"
  desc "Scanner driver"
  homepage "https://www.usa.canon.com/internet/portal/us/home/support/details/scanners/support-scanners-canoscan-series/canoscan-lide-500f"

  pkg "ScanGear CS 11.2 Eng_Installer.pkg"

  uninstall pkgutil: 'jp.co.canon.pkg.CanoScan\ LiDE\ 500F',
            kext:    "jp.co.canon.iokit.CNQL2410_ClassicNotSeize"

  zap trash: [
    "~/Library/Preferences/CanoScan LiDE 500F",
  ]

  caveats do
    reboot
  end
end
