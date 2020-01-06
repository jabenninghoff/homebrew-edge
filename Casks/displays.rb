cask 'displays' do
  version '1.9'
  sha256 'f848966986631c471a524a3023051623dc281436cdac64c6123b8427fb8acd7b'

  url "https://www.jibapps.com/ressources/displays/files/Displays.#{version}.zip"
  appcast 'https://www.jibapps.com/ressources/displays/appcast.xml'
  name 'Displays'
  homepage 'https://www.jibapps.com/apps/displays/'

  app 'Displays.app'

  zap trash: [
               '~/Library/Application Support/com.jibapps.Displays',
               '~/Library/Saved Application State/com.jibapps.DisplaysMigrator.savedState',
               '~/Library/Preferences/com.jibapps.Displays.plist',
               '~/Library/Caches/com.jibapps.Displays',
             ]
end
