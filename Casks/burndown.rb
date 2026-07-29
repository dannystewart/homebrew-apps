cask 'burndown' do
  version '1.0.0'
  sha256 'f76489b8b0f6b97474a3f3db6277ee4ff1979b941bbce2440e43ce20a25a032f'

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
