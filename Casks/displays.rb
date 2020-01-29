cask 'displays' do
  version '1.9.2'
  sha256 '8018c51d5f38e082afcb80bb4e7e75c4528e338776bf753d13d627e70a3851c0'

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
