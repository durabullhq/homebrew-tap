cask "durabull" do
  version "1.4.0"
  sha256 "3750f434506cae90bd39bb9fea4316417a20113d9d251f3be529008e54805351"

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
