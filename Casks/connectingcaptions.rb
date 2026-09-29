cask "connectingcaptions" do
  version "1.6.15"
  sha256 "65d37229439647c9703fc54c84c449e34bf8f22886526720451db8677317ebc1"

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
