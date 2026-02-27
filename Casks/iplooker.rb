cask "iplooker" do
  version "1.0.0"
  sha256 "53c49dba67b2584a00feff9bb698c5dfd2c645c1844c45255df2c9e699ab0816"

  url "https://github.com/dannystewart/IPLookerApp/releases/download/v#{version}/IPLooker-#{version}.dmg"
  name "IPLooker"
  desc "IP lookup app with multi-source aggregation"
  homepage "https://github.com/dannystewart/IPLookerApp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "IPLooker.app"

  uninstall quit:       "com.dannystewart.IPLooker"
end
