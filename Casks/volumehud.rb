cask "volumehud" do
  version "3.0.0"
  sha256 "fa139d3583b2a72f93cd1023c4ecfaa7e89dbd5dfd98f898e7c57f25f9040585"

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
    "~/Library/Application Support/volumeHUD",
    "~/Library/Caches/com.dannystewart.volumehud",
    "~/Library/Logs/volumeHUD",
    "~/Library/Preferences/com.dannystewart.volumehud.plist",
    "~/Library/Saved Application State/com.dannystewart.volumehud.savedState",
  ]

  conflicts_with cask: "dannystewart/apps/volumehud-beta"
end
