cask "volumehud" do
  version "3.0.3"
  sha256 "a5adff35e6347b4aca61a6a68b8bea0c31a3ac387965af84d28ca0a17b8fab3f"

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
