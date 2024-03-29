cask "transmit5" do
  version "5.7.6"
  sha256 "e7f330fa01a8aa2d6ebd7d4a6ee2b14ed3a05ee555f73544f6d61da6ee683a13"

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  name "Transmit"
  desc "File transfer application"
  homepage "https://panic.com/transmit/"

  livecheck do
    skip "legacy version for Mojave"
  end

  auto_updates true

  app "Transmit.app"

  zap trash: [
    "~/Library/Application Support/Transmit",
    "~/Library/Application Support/com.panic.Transmit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.transmit.sfl2",
    "~/Library/Caches/com.panic.Transmit",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.panic.Transmit",
    "~/Library/Caches/Transmit",
    "~/Library/Preferences/com.panic.Transmit.plist",
    "~/Library/Saved Application State/com.panic.Transmit.savedState",
    "~/Library/WebKit/com.panic.Transmit",
  ]
end
