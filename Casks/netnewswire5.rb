cask "netnewswire5" do
  version "5.0.4"
  sha256 "6223a5fecae3307016bb645c49e4988fb5a253460f9a257e47fa5bbe0d89ca3d"

  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip",
      verified: "github.com/brentsimmons/NetNewsWire/"
  name "NetNewsWire"
  desc "Free and open-source RSS reader"
  homepage "https://ranchero.com/netnewswire/"

  livecheck do
    skip "legacy version for Mojave"
  end

  auto_updates true

  app "NetNewsWire.app"
end
