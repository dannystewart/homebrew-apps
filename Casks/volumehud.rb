cask 'volumehud' do
  version '3.3.1'
  sha256 'e6a4189699c5cdf782939d591c0e7593611408256c7efa8370f4a16d99e7c038'

  url "https://github.com/dannystewart/volumeHUD/releases/download/v#{version}/volumeHUD-#{version}.dmg"
  name 'volumeHUD'
  desc ' Bring back the pre-Tahoe macOS volume and brightness HUDs '
  homepage 'https://github.com/dannystewart/volumeHUD'

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: '>= :tahoe'

  app 'volumeHUD.app'

  uninstall quit: 'com.dannystewart.volumehud',
            login_item: 'volumeHUD'

  zap trash: [
    '~/Library/Application Support/volumeHUD',
    '~/Library/Caches/com.dannystewart.volumehud',
    '~/Library/Logs/volumeHUD',
    '~/Library/Preferences/com.dannystewart.volumehud.plist',
    '~/Library/Saved Application State/com.dannystewart.volumehud.savedState',
  ]

  conflicts_with cask: 'dannystewart/apps/volumehud-beta'
end
