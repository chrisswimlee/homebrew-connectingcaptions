cask "connectingcaptions" do
  version "1.6.16"
  sha256 "1a2f535d4dfa32e383db751673276b58414daa104368040a35d9095e41e6c1b0"

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
