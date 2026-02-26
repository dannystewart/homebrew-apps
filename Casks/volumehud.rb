cask "volumehud" do
  version "3.2.0"
  sha256 "4a655aeec5c91423b653c09c1c213e2348144ed3ce10e60057ed555549febe99"

  url "https://github.com/dannystewart/volumeHUD/releases/download/v#{version}/volumeHUD-#{version}.dmg"
  name "volumeHUD"
  desc " Bring back the pre-Tahoe macOS volume and brightness HUDs "
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
