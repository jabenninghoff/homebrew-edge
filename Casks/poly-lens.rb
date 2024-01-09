cask "poly-lens" do
  version "1.3.1"
  sha256 "a6c9933fc74d1aa3f1aa5a152937bbe0b65cb3386347f79478992f896c87ed17"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyLens-#{version}.dmg"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.poly.com/us/en/support/downloads-apps"

  livecheck do
    skip "Homepage version API not supported"
  end

  app "Poly Lens.app"
end
