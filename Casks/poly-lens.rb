cask "poly-lens" do
  version "1.1.28"
  sha256 "4cb79c6237dab7aed383a411ff80e75d514bf191cc6ce358f96dc0bbd33b83a8"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyLens-#{version}.dmg"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.poly.com/us/en/support/downloads-apps"

  livecheck do
    skip "Homepage version API not supported"
  end

  app "Poly Lens.app"
end
