cask "dragthing" do
  version "5.9.17"
  sha256 "62d553878267d617aa2be48f09dfc401d08afce216cd42aef7441f4f95dd4cff"

  url "https://tlasystems.s3.amazonaws.com/DragThing-#{version}.dmg",
      verified: "tlasystems.s3.amazonaws.com/"
  name "DragThing"
  desc "Desktop organizer"
  homepage "https://www.dragthing.com/"

  deprecate! date: "2025-12-31", because: "32-bit application"

  livecheck do
    url "https://www.dragthing.com/english/download.html"
    regex(%r{href=.*?/DragThing-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "DragThing.app"
end
