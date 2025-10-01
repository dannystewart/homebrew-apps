cask "volumehud" do
  version "1.2.6"
  sha256 "2805016224ebef4be65c3c4ab327003554d8f1b3c8ca85b60224d6cfd48c381e"

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

  conflicts_with cask: "volumehud-beta"

  caveats <<~EOS
    To run on startup, add the app to System Settings > General > Login Items & Extensions > Open at Login.
    To report bugs, please visit the GitHub repository: https://github.com/dannystewart/volumeHUD/issues
  EOS
end
