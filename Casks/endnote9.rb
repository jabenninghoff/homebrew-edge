cask "endnote9" do
  version "9"
  sha256 :no_check

  url "https://download.endnote.com/downloads/X#{version}/EndNoteX#{version}Installer.dmg"
  name "EndNote"
  desc "Reference Manager"
  homepage "https://endnote.com/"

  container nested: "Install EndNote X#{version}.app/Contents/Resources/EndNote.zip"

  suite "EndNote"

  zap trash: [
    "/Library/Application Support/ResearchSoft/EndNote",
    "~/Library/Application Support/EndNote",
    "~/Library/Caches/com.ThomsonResearchSoft.EndNote",
    "~/Library/Preferences/com.ThomsonResearchSoft.EndNote.plist",
    "~/Library/Services/ENService.app",
    "~/Library/Spotlight/EndNote.mdimporter",
  ]
end
