cask "volumehud" do
  version "3.1.0"
  sha256 "9d3f49015f8f4f8269c7e87bba663ab0ab55bbf7a0c4c0258de10564e6ea9827"

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
