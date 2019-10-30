cask 'ctivo' do
  version '3.4.0'
  sha256 '19d1f7f3f65b0b3a7877909a350e967f271978ffe085b80c57eb9684e6d84e45'

  url "https://github.com/mackworth/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/mackworth/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/mackworth/cTiVo'

  app 'cTiVo.app'
end
