cask 'displays' do
  version '1.9.1'
  sha256 '4c31b54fab46ebc2a13c782dd3d0e7c922af696a5a9d0f7087b78f3dfb96d613'

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
