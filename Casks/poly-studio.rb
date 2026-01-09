cask "poly-studio" do
  version "5.0.0.889"
  sha256 "495455e197648d05708caa1a54e79cafe4b6d30605a7d552dcb651e506b817b6"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyStudio-#{version}.dmg",
      verified: "swupdate.lens.poly.com/lens-desktop-mac/"
  name "poly-studio"
  desc "Configuration software for Poly devices"
  homepage "https://www.hp.com/us-en/poly/software-and-services/software/poly-lens/app.html"

  livecheck do
    # https://info.lens.poly.com/lens-dt-rn has incomplete version info
    skip "Homepage version API not supported"
  end

  pkg "PolyStudio-#{version}.pkg"

  uninstall pkgutil: "com.poly.lens.desktop.pkg"
end
