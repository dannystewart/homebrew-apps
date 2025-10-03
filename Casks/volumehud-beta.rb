cask "volumehud-beta" do
  version "2.0-beta.4"
  sha256 "f670a7502081b6a515380d5c9b6e0c76baea11cdd4782ed5f7d8098e6629b891"

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
    "~/Library/Caches/com.dannystewart.volumehud",
    "~/Library/Caches/com.dannystewart.volumehud.debug",
    "~/Library/Preferences/com.dannystewart.volumehud.plist",
    "~/Library/Preferences/com.dannystewart.volumehud.debug.plist",
    "~/Library/Saved Application State/com.dannystewart.volumehud.savedState",
    "~/Library/Saved Application State/com.dannystewart.volumehud.debug.savedState",
  ]

  conflicts_with cask: "dannystewart/apps/volumehud"

  caveats <<~EOS
    WARNING: This is a beta version of volumeHUD. When the next stable release is available,
    you will need to MANUALLY uninstall the beta and reinstall the stable version:

        $ brew uninstall volumehud-beta
        $ brew install dannystewart/apps/volumehud

    To report bugs, please visit the GitHub repository: https://github.com/dannystewart/volumeHUD/issues
  EOS
end
