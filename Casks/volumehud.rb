cask "volumehud" do
  version "1.1.0"
  sha256 "b2908500688180d3d561ce0f565694625847c6c4f76a9ad5d99b8c46c5a21ab1"

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
