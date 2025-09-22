cask "volumehud" do
  version "1.2.2"
  sha256 "b6fb2a8f5058eb2835c7c9d36449fdf214cd6ed55ac5cc6322454e57a2afa734"

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
