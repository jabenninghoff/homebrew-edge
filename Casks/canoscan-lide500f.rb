cask 'canoscan-lide500f' do
  version '11.2.5.1X'
  sha256 '8ffeef127c9db525fdbebad7f569bcf89065b2c315731b72b5f7f8be23a4ffe9'

  # gdlp01.c-wss.com/gds was verified as official when first introduced to the cask
  url 'https://gdlp01.c-wss.com/gds/9/0900003219/04/lide500fosx11251en.dmg'
  name 'CanoScan LiDE 500F'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/details/scanners/support-scanners-canoscan-series/canoscan-lide-500f'

  pkg 'ScanGear CS 11.2 Eng_Installer.pkg'

  uninstall pkgutil: 'jp.co.canon.pkg.CanoScan\ LiDE\ 500F',
            kext:    'jp.co.canon.iokit.CNQL2410_ClassicNotSeize'

  zap trash: [
               '/Library/Preferences/CanoScan LiDE 500F',
             ]

  caveats do
    reboot
  end
end
