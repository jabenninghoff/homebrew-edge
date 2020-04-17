cask 'displays' do
  version '1.9.3'
  sha256 'f2fe9a2519919a11c1bbd1b89ee84cddd9857a1564fae7034792119b2d247288'

  url "https://www.jibapps.com/ressources/displays/files/Displays.#{version}.zip"
  appcast 'https://www.jibapps.com/ressources/displays/appcast.xml'
  name 'Displays'
  homepage 'https://www.jibapps.com/apps/displays/'

  auto_updates true

  app 'Displays.app'

  zap trash: [
               '~/Library/Application Support/com.jibapps.Displays',
               '~/Library/Saved Application State/com.jibapps.DisplaysMigrator.savedState',
               '~/Library/Preferences/com.jibapps.Displays.plist',
               '~/Library/Caches/com.jibapps.Displays',
             ]
end
