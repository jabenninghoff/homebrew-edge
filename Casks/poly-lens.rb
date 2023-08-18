cask "poly-lens" do
  version "1.2.0"
  sha256 "d9ae08a63da743815e3559cc4e6db9988461de394fe9ac47f0f79ec07b4a2d8b"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyLens-#{version}.dmg"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.poly.com/us/en/support/downloads-apps"

  livecheck do
    skip "Homepage version API not supported"
  end

  app "Poly Lens.app"
end
