cask 'anchor' do
  version '1.0.1'
  sha256 '4a6f7d2df9f50db13b2632636f9826eb5f54d2d02cf1670b40e35aa4ec34bfc9'

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
