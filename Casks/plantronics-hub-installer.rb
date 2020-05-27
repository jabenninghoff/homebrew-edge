cask 'plantronics-hub-installer' do
  # clone of https://github.com/Homebrew/homebrew-cask-drivers/blob/master/Casks/plantronics-hub.rb modified to install once
  version 'installer'
  sha256 :no_check

  url 'https://www.poly.com/content/dam/www/software/PlantronicsHubInstaller.dmg'
  name 'Plantronics Hub Installer'
  homepage 'https://www.poly.com/us/en/support/downloads-apps'

  depends_on macos: '>= :yosemite'

  pkg 'Plantronics Software.pkg'

  uninstall pkgutil:   [
                         'com.plantronics.plantronicsSoftware.PlantronicsHub.pkg',
                         'com.plantronics.plantronicsSoftware.preflight.pkg',
                         'Plantronics-Inc..Plantronics-Hub',
                       ],
            launchctl: 'com.PlantronicsUpdateService',
            quit:      'Plantronics-Inc..Plantronics-Hub'

  zap trash: [
               '~/Library/Application Support/Plantronics',
               '~/Library/Preferences/Plantronics-Inc..Plantronics-Hub.plist',
               '~/Library/Preferences/Plantronics.Plantronics-Hub-Helper.plist',
               '~/Library/Saved Application State/Plantronics-Inc..Plantronics-Hub.savedState',
             ]
end