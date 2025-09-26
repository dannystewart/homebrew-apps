cask "volumehud" do
  version "1.2.4"
  sha256 "dffe9d1cd1ed30e55dab6a87f7ddb71af1ff4c006b74659a5c49bd6c844c588c"

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
end
