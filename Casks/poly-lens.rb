cask "poly-lens" do
  version "1.3.2"
  sha256 "e3c3f4e01ae1d6f92d1dd44e0ba10fc1b34ba2910667112d8da007ee530c963b"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyLens-#{version}.dmg"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.poly.com/us/en/support/downloads-apps"

  livecheck do
    skip "Homepage version API not supported"
  end

  app "Poly Lens.app"
end
