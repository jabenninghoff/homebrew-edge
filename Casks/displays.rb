cask 'displays' do
  version '1.9.4'
  sha256 '918b97a47d810f74479cdafdbb61ebb0fb7620f673f84d876901e82fb7345101'

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
