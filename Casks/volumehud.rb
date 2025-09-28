cask "volumehud" do
  version "1.2.5"
  sha256 "f09ac41584267e10ef70880c2fe1cd131391d6d4916e872901a32fcadd958b98"

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
