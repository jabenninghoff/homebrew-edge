cask "poly-lens" do
  version "2.0.0.632"
  sha256 "3bdc4c407eb4390d4900f91dc9757f9d21a5af50551f3228818549f46b160a51"

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
