cask "volumehud" do
  version "2.0.2"
  sha256 "4edcfea1ea29e79906351ad0be4fdd2d0be803d582975c2d5d376f4a9f26053f"

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
