cask "poly-lens" do
  version "1.1.27"
  sha256 "5a93750cc491b9f71ec63c7f9dcb8eac5b9750d4fcf9a5f32a62db3c9a81ff9d"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyLens-#{version}.dmg"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.poly.com/us/en/support/downloads-apps"

  livecheck do
    skip "Homepage version API not supported"
  end

  app "Poly Lens.app"
end
