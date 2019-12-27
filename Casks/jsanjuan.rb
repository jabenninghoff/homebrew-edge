cask 'jsanjuan' do
  version '1.1'
  sha256 'cb2fc39b9c0b8dc2c34d87aec0e71c51945aff8364d3d905081418b163374261'

  url "http://www.compoundeye.net/jsanjuan/JSanJuan_v#{version.no_dots}.jar"
  name 'JSanJuan'
  homepage 'http://www.compoundeye.net/jsanjuan/index.html'

  app "JSanJuan_v#{version.no_dots}.jar"

  caveats do
    depends_on_java
  end
end
