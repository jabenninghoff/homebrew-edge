cask "transcriptions" do
  version "1.4"
  sha256 "8fcde56fe192a5c99272fadc3d3069747fb765ea3c59d3416fc1c9057446caea"

  url "https://github.com/soleil-alpin/Transcriptions/releases/download/v#{version}/Transcriptions.app.zip",
      verified: "github.com/soleil-alpin/Transcriptions/"
  name "Transcriptions"
  desc "Text editor for fast manual transcription"
  homepage "https://transcriptions.dev/"

  depends_on macos: ">= :monterey"

  app "Transcriptions.app"

  zap trash: [
    "~/Library/Application Scripts/com.davidhas.Transcriptions",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.davidhas.transcriptions.sfl*",
    "~/Library/Containers/com.davidhas.Transcriptions",
  ]
end
