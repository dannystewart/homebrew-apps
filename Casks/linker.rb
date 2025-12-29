cask "linker" do
  version "1.0.0"
  sha256 "c4fd30f77bb7723c3be0b74dc17be1c30ea36c5ce0f1c6dbd3f1b7d0143da346"

  url "https://github.com/dannystewart/Linker/releases/download/v#{version}/Linker-#{version}.dmg"
  name "Linker"
  desc "macOS symlink creator"
  homepage "https://github.com/dannystewart/Linker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Linker.app"

  uninstall quit:       "com.dannystewart.Linker"
end
