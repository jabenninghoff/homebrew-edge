cask "poly-lens" do
  version "2.3.0.1517"
  sha256 "9428e67219eb4485f0bff565775e70f5e4f94783f16b65ea5cf92e928f8dc080"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/LensDesktop-#{version}.dmg",
      verified: "swupdate.lens.poly.com/lens-desktop-mac/"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.hp.com/us-en/poly/software-and-services/software/poly-lens/app.html"

  livecheck do
    skip "Homepage version API not supported"
  end

  pkg "LensDesktop-#{version}.pkg"

  uninstall pkgutil: "com.poly.lens.desktop.pkg"
end
