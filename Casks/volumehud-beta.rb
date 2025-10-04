cask "volumehud-beta" do
  version "2.0.0"
  sha256 "ef7a77f6b71515d699c6ebbd29fb29c0cce799ad5d84f0c8cdb55513076654c0"

  url "https://files.dannystewart.com/apps/releases/volumeHUD-#{version}.dmg"
  name "volumeHUD beta"
  desc "Restores the macOS volume HUD from pre-Tahoe (beta)"
  homepage "https://github.com/dannystewart/volumeHUD"

  livecheck do
    url :url
    strategy :header_match
    regex(/volumeHUD-(\d+\.\d+-beta\d+)\.dmg/i)
  end

  deprecate! date: "2025-10-04", because: "no active beta; use dannystewart/apps/volumehud instead"

  depends_on macos: ">= :tahoe"

  app "volumeHUD.app"

  uninstall quit:       "com.dannystewart.volumehud",
            login_item: "volumeHUD"

  zap trash: [
    "~/Library/Caches/com.dannystewart.volumehud",
    "~/Library/Caches/com.dannystewart.volumehud.debug",
    "~/Library/Preferences/com.dannystewart.volumehud.plist",
    "~/Library/Preferences/com.dannystewart.volumehud.debug.plist",
    "~/Library/Saved Application State/com.dannystewart.volumehud.savedState",
    "~/Library/Saved Application State/com.dannystewart.volumehud.debug.savedState",
  ]

  conflicts_with cask: "dannystewart/apps/volumehud"

  caveats <<~EOS
    WARNING: volumeHUD 2.0 is NO LONGER IN BETA AND THIS CASK WILL NO LONGER BE UPDATED.
    You should MANUALLY UNINSTALL the beta and reinstall the stable version:

        $ brew uninstall volumehud-beta
        $ brew install dannystewart/apps/volumehud

    To report bugs, please visit the GitHub repository: https://github.com/dannystewart/volumeHUD/issues
  EOS
end
