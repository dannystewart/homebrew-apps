cask "volumehud-beta" do
  version "2.0-beta6"
  sha256 "107b2eafaa67f99115a95b6d0a86ac9457f7d0500f830e7725b169d18ae60257"

  url "https://files.dannystewart.com/apps/releases/volumeHUD-#{version}.dmg"
  name "volumeHUD beta"
  desc "Restores the macOS volume HUD from pre-Tahoe (beta)"
  homepage "https://github.com/dannystewart/volumeHUD"

  livecheck do
    url :url
    strategy :header_match
    regex(/volumeHUD-(\d+\.\d+-beta\d+)\.dmg/i)
  end

  # deprecate! date: "2025-10-01", because: "no active beta; use dannystewart/apps/volumehud instead"

  depends_on macos: ">= :tahoe"

  app "volumeHUD.app"

  uninstall quit:       "com.dannystewart.volumehud",
            login_item: "volumeHUD"

  zap trash: [
    "~/Library/Preferences/com.dannystewart.volumehud.plist",
    "~/Library/Saved Application State/com.dannystewart.volumehud.savedState",
    "~/Library/Caches/com.dannystewart.volumehud",
  ]

  conflicts_with cask: "volumehud"

  caveats <<~EOS
    WARNING: This is a beta version of volumeHUD. When the next stable release is available,
    you will need to MANUALLY uninstall the beta and reinstall the stable version:

    $ brew uninstall volumehud-beta
    $ brew install dannystewart/apps/volumehud

    To report bugs, please visit the GitHub repository: https://github.com/dannystewart/volumeHUD/issues
  EOS
end
