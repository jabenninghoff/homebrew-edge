cask "nicecast" do
  version "1.11.13"
  sha256 "99ea875e2e4c8bfd7a976150140f25c85e006fdad2dc7124f7ae61fcba940537"

  url "https://rogueamoeba.com/legacy/downloads/Nicecast-#{version.no_dots}.zip"
  name "Nicecast"
  desc "Internet radio broadcasting app"
  homepage "https://rogueamoeba.com/nicecast/"

  deprecate! date: "2018-03-01", because: :discontinued

  app "Nicecast.app"
end
