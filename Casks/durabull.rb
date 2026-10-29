cask "durabull" do
  version "1.44.1"
  sha256 "3f676cdaac0560d3af12f8ea0fd83160063fa83878dd9defbc2f65a385bc1ecc"

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
