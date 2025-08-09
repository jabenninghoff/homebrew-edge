cask "poly-lens" do
  version "2.2.0.1370"
  sha256 "338c81c63e3c062f45221560f8274190a1156cdfafbbb7e46bbf0d22c8853f3a"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/LensDesktop-#{version}.dmg"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.poly.com/us/en/support/downloads-apps"

  livecheck do
    skip "Homepage version API not supported"
  end

  pkg "LensDesktop-#{version}.pkg"

  uninstall pkgutil: "com.poly.lens.desktop.pkg"
end
