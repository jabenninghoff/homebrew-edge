cask "pdnu" do
  version "1.1,18070002-10"
  sha256 "24097099e3798669854d36dd68031b8ddb6f0498dfe7e96544379ac2f77ff037"

  url "https://www.cyberpower.com/global/en/File/GetImageByDocId/SU-#{version.csv.second}"
  name "Power Device Network Utility"
  desc "Network device discovery utility"
  homepage "https://www.cyberpower.com/eu/en/software/utility"

  app "PDNU.app"

  zap trash: [
    "~/Library/Preferences/com.cyberpower.PDNU.plist",
    "~/Library/Library/Saved Application State/com.cyberpower.PDNU.savedState",
  ]
end
