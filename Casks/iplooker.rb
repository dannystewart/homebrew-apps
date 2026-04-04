cask 'iplooker' do
  version '1.0.1'
  sha256 '5989111767a60ca8b88f0886a5dce9ae0cec72b295057131a440c8b93109f54c'

  url "https://github.com/dannystewart/IPLookerApp/releases/download/v#{version}/IPLooker-#{version}.dmg"
  name 'IPLooker'
  desc 'IP lookup app with multi-source aggregation'
  homepage 'https://github.com/dannystewart/IPLookerApp'

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: '>= :tahoe'

  app 'IPLooker.app'

  uninstall quit: 'com.dannystewart.IPLooker'
end
