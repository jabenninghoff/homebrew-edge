cask "radioshark" do
  version "2.0.2"
  sha256 "64a0ab79cd62e2712e8031ef5b1e5cef565d5353f8077a80db22e4fb527c3417"

  url "https://support.griffintechnology.com/wp-content/uploads/sites/3/2015/08/RadioSharkv_#{version.dots_to_underscores}.zip"
  name "radioSHARK"
  homepage "https://support.griffintechnology.com/product/radioshark/"

  pkg "radioSHARK.pkg"

  uninstall pkgutil: "com.griffintechnology.radioSHARK"

  zap trash: [
    "~/Library/Caches/com.griffintechnology.radioSHARK",
    "~/Library/Library/Preferences/com.griffintechnology.radioSHARK.plist",
    "~/Library/Library/Preferences/com.griffintechnology.radioSHARK.plist.lockfile",
    "~/Library/Saved Application State/com.griffintechnology.radioSHARK.savedState",
  ]

  caveats do
    discontinued
  end
end
