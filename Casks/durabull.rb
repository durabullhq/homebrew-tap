cask "durabull" do
  version "1.11.0"
  sha256 "93fe98b9c99b3f3e32dece271f893b58d164219224184d0bc7d5b429c718398b"

  url "https://github.com/durabullhq/durabull/releases/download/v#{version}/Durabull-#{version}-arm64.dmg",
      verified: "github.com/durabullhq/durabull/"

  name "Durabull"
  desc "The modern dashboard for BullMQ"
  homepage "https://durabull.io"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Durabull.app"

  zap trash: [
    "~/Library/Application Support/Durabull",
    "~/Library/Caches/com.durabull.desktop",
    "~/Library/Preferences/com.durabull.desktop.plist",
  ]
end
