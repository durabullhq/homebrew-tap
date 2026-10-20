cask "durabull" do
  version "1.43.0"
  sha256 "2e408f9c34c728a1a241d146d4219c07c54a4573ed571ab9029414ef70ae0fb4"

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
