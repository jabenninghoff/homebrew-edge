cask "blackthorne" do
  version "1.0.0.0"
  sha256 :no_check

  url "http://dist.blizzard.com/downloads/blackthorne/5e1a0ce1d84e3ee3005dd26181e14a2f/BlackthorneSetup.dmg"
  name "Blackthorne"
  desc "Cinematic platform game"
  homepage "https://www.blizzard.com/en-us/download/?platform=macos"

  app "Blackthorne.app"

  zap trash: [
    "~/Library/Application Support/Blizzard/Blackthorne",
    "~/Library/Saved Application State/com.blizzard.blackthorne.savedState",
  ]
end
