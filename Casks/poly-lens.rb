cask "poly-lens" do
  version "2.3.1.1775"
  sha256 "4da23fb99aa903106ae56473fadbc0c5022f7f0529f30088ad3311d135fbe217"

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
