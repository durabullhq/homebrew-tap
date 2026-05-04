cask "durabull" do
  version "1.6.0"
  sha256 "9b618ac268781c72df2fbe6cf6a61591f81bca522671175e0b445d13c9868c27"

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
