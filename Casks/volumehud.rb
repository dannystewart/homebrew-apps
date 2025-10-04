cask "volumehud" do
  version "2.0.0"
  sha256 "ef7a77f6b71515d699c6ebbd29fb29c0cce799ad5d84f0c8cdb55513076654c0"

  url "https://github.com/dannystewart/volumeHUD/releases/download/v#{version}/volumeHUD-#{version}.dmg"
  name "volumeHUD"
  desc "Restores the macOS volume HUD from pre-Tahoe"
  homepage "https://github.com/dannystewart/volumeHUD"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "volumeHUD.app"

  uninstall quit:       "com.dannystewart.volumehud",
            login_item: "volumeHUD"

  zap trash: [
    "~/Library/Preferences/com.dannystewart.volumehud.plist",
    "~/Library/Saved Application State/com.dannystewart.volumehud.savedState",
    "~/Library/Caches/com.dannystewart.volumehud",
  ]

  conflicts_with cask: "dannystewart/apps/volumehud-beta"
end
