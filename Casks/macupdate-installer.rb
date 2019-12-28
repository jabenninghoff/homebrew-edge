cask 'macupdate-installer' do
  # clone of https://github.com/Homebrew/homebrew-cask/blob/master/Casks/macupdate.rb modified to install once
  version 'installer'
  sha256 :no_check

  url 'https://www.macupdate.com/mud-download'
  name 'MacUpdate Desktop Installer'
  homepage 'https://www.macupdate.com/desktop'

  app 'MacUpdate Desktop.app'

  zap trash: [
               "~/Library/Application Support/MacUpdate/MacUpdate Desktop #{version.major}",
               "~/Library/Caches/com.macupdate.desktop#{version.major}",
               "~/Library/Cookies/com.macupdate.desktop#{version.major}.binarycookies",
               '~/Library/Logs/MacUpdate Desktop',
               "~/Library/Preferences/com.macupdate.desktop#{version.major}.plist",
               "~/Library/Saved Application State/com.macupdate.desktop#{version.major}.savedState",
             ]
end
