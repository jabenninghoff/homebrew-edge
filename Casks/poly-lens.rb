cask "poly-lens" do
  version "1.1.26"
  sha256 "0a902cbb90b5f8309e2dd2a1af223ee908fea28fa3ac6b7b63ad4b47b74029da"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyLens-#{version}.dmg"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.poly.com/us/en/support/downloads-apps"

  livecheck do
    skip "Homepage version API not supported"
  end

  app "Poly Lens.app"
end
