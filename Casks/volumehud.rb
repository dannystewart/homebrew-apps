cask "volumehud" do
  version "1.2.0"
  sha256 "147b9b591b542fdd7854448cfb77fab30bc30f2f7c0ee0bf7908550c1c0705c3"

  url "https://github.com/dannystewart/volumeHUD/releases/download/v#{version}/volumeHUD-#{version}.dmg"
  name "volumeHUD"
  desc "macOS volume HUD from pre-Tahoe"
  homepage "https://github.com/dannystewart/volumeHUD"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "volumeHUD.app"
end
