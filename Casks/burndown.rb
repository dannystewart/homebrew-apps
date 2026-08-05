cask 'burndown' do
  version '1.1.0'
  sha256 '23f25d8b5cf80d0d6a69896f2e8956ee52902ad73f93b8a465cf44c101780a78'

  url "https://github.com/dannystewart/Burndown/releases/download/v#{version}/Burndown-#{version}.dmg"
  name 'Burndown'
  desc 'macOS symlink creator'
  homepage 'https://github.com/dannystewart/Burndown'

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app 'Burndown.app'

  uninstall quit: 'com.dannystewart.Burndown'
end
