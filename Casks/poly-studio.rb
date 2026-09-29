# edge because: no viable livecheck
cask "poly-studio" do
  version "5.2.0.2181"
  sha256 "e46484d10542c888e507424f1a6bbb636cd7cc6e411c86fbe8eeb943ae9a1ba7"

  url "https://swupdate.lens.poly.com/lens-desktop-mac/#{version}/#{version}/PolyStudio-#{version}.dmg"
  name "poly-studio"
  desc "Configuration software for Poly devices"
  homepage "https://www.hp.com/us-en/poly/software-and-services/software/poly-lens/app.html"

  livecheck do
    # https://info.lens.poly.com/lens-dt-rn has incomplete version info
    # use Atom feed to detect newer versions
    url "https://info.lens.poly.com/lens-dt-rn/atom.xml"
    regex(/version-(\d+(?:\.\d+)+)/i)
    strategy :xml do |xml, regex|
      xml.get_elements("feed//entry//id").map { |item| item.text[regex, 1] }
    end
  end

  depends_on macos: :sonoma

  pkg "PolyStudio-#{version}.pkg"

  uninstall pkgutil: "com.poly.lens.desktop.pkg"
end
