cask 'anchor' do
  version '1.0.0'
  sha256 '35623e599e7583f1cbd9706d886dcb02c7d4dae16c7ea1c0b84b0f4c9fdfd450'

  url "https://github.com/dannystewart/Anchor/releases/download/v#{version}/Anchor-#{version}.dmg"
  name 'Anchor'
  desc 'ADHD-friendly Mac app to help anchor you to your current task'
  homepage 'https://github.com/dannystewart/Anchor'

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app 'Anchor.app'

  uninstall quit: 'com.dannystewart.Anchor'
end
