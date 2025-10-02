cask "volumehud-beta" do
  version "2.0-rc.2"
  sha256 "164082cff17b914b88e86ed36761bfa36b71c217fc5b83303779501908891bda"

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

  conflicts_with cask: "dannystewart/apps/volumehud"

  caveats <<~EOS
    WARNING: This is a beta version of volumeHUD. When the next stable release is available,
    you will need to MANUALLY uninstall the beta and reinstall the stable version:

    $ brew uninstall volumehud-beta
    $ brew install dannystewart/apps/volumehud

    To report bugs, please visit the GitHub repository: https://github.com/dannystewart/volumeHUD/issues
  EOS
end
