cask "poly-lens" do
  version "1.3.0"
  sha256 "012c5bbae1ccdf980562f6794ae87c4cafe23d2af6d68373ad01f301b5ac9c5e"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyLens-#{version}.dmg"
  name "poly-lens"
  desc "Configuration software for Poly devices"
  homepage "https://www.poly.com/us/en/support/downloads-apps"

  livecheck do
    skip "Homepage version API not supported"
  end

  app "Poly Lens.app"
end
