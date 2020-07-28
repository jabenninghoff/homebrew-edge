cask "colossus" do
  version "20160121"
  sha256 "460aa15f6bbdc24935b8182a1660fcbe86a6ceeaa48bd52b87cd8578385e3061"

  url "https://sourceforge.net/projects/colossus/files/latest/download"
  appcast "https://sourceforge.net/projects/colossus/rss"
  name "Colossus"
  homepage "http://colossus.sourceforge.net/"

  # stage_only and link to the staged path to work around the lack of a subfolder that can be targeted by suite
  stage_only true

  postflight do
    FileUtils.ln_sf(staged_path.to_s, "/Applications/Colossus")
  end

  uninstall_postflight do
    FileUtils.rm_f("/Applications/Colossus")
  end

  caveats do
    depends_on_java
  end
end
