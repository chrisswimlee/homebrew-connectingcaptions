cask "connectingcaptions" do
  version "1.6.13"
  sha256 "76d3a9f480d235bd4b8eb93f427e4e3a5086572206c472be9976d597b887a9a6"

  url "https://github.com/chrisswimlee/connectingCaptions/releases/download/v#{version}/Connecting-Captions-#{version}.zip"
  name "Connecting Captions"
  desc "Live captions. Each sentence appears when it is ready"
  homepage "https://github.com/chrisswimlee/connectingCaptions"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Connecting Captions.app"

  zap trash: [
    "~/Library/Application Support/connectingCaptions",
    "~/Library/Preferences/com.connectingcaptions.app.plist",
  ]
end
