cask "caldigit-thunderbolt-charging-installer" do
  # clone of https://github.com/Homebrew/homebrew-cask-drivers/blob/HEAD/Casks/caldigit-thunderbolt-charging.rb
  # modified to install once
  version "installer"
  sha256 :no_check

  url "https://downloads.caldigit.com/CalDigit-Thunderbolt-Station-Mac-Drivers.zip"
  name "CalDigit Thunderbolt Station USB Charging & SuperDrive Support Driver"
  desc "Apple SuperDrive, Apple Keyboard, and Improved iPhone/iPad Charging"
  homepage "https://www.caldigit.com/"

  pkg "CalDigit-Thunderbolt-Station-Mac-Drivers.pkg"

  uninstall kext:    [
    "com.CalDigit.ThunderboltStationChargingSupport",
    "com.CalDigit.driver.HDPro",
  ],
            pkgutil: [
              "com.CalDigit.CalDigitThunderboltStationChargingSupport.StationsChargingSupport." \
              "CalDigitThunderboltStationChargingSupport.pkg",
              "com.CalDigit.ThunderboltStation3ChargingSupport.pkg",
            ],
            delete:  [
              "/Library/Extensions/CalDigitHDProDrv.kext",
              "/Library/Extensions/CalDigitThunderboltStationChargingSupport.kext",
            ]

  caveats do
    reboot
  end
end
