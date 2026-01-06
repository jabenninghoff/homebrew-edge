cask "nicecast" do
  version "1.11.13"
  sha256 "99ea875e2e4c8bfd7a976150140f25c85e006fdad2dc7124f7ae61fcba940537"

  url "https://rogueamoeba.com/legacy/downloads/Nicecast-#{version.no_dots}.zip"
  name "Nicecast"
  desc "Internet radio broadcasting app"
  homepage "https://rogueamoeba.com/nicecast/"

  deprecate! date: "2025-12-31", because: "32-bit application"

  app "Nicecast.app"
end
