cask 'arq5' do
  version '5.18'
  sha256 '0bdc77398c4c04167181383a84ce9623c2a5e1cac787d30822ccd346b3d5df85'

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  appcast 'https://www.arqbackup.com/'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  app 'Arq.app'

  uninstall quit:      'com.haystacksoftware.Arq',
            launchctl: [
                         'com.haystacksoftware.ArqMonitor',
                         'com.haystacksoftware.arqagent',
                       ]
end
