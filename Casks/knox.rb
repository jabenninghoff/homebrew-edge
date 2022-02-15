cask "knox" do
  version "2.3.2"
  sha256 "35379e9af57d39ed0fcc965d295e1509f32300044379ab3c686b762fe1eac915"

  url "https://c.1password.com/dist/K/Knox-#{version}.zip",
      verified: "c.1password.com"
  name "Knox"
  desc "FileVault disk image manager"
  homepage "https://app-updates.agilebits.com/product_history/KNOX"

  app "Knox.app"

  zap trash: [
    "~/Library/Caches/com.knoxformac.knox",
    "~/Library/Preferences/com.knoxformac.knox.plist",
  ]
end
