cask "omnipty" do
  version "0.9.0"
  sha256 "238791d1baeb6758f7cb415d46de2a7bc88a67e76bd7128fbbcd4e8c8eb8c185"

  url "https://downloads.omnipty.com/omnipty/#{version}/OmniPTY-#{version}.dmg"
  name "OmniPTY"
  desc "GPU-rendered terminal emulator written in Rust"
  homepage "https://omnipty.com/"

  auto_updates true
  depends_on macos: :monterey

  app "OmniPTY.app"

  zap trash: [
    "~/.config/omnipty",
    "~/.cache/omnipty",
    "~/Library/Application Support/dev.bobbycoleman.omnipty",
    "~/Library/Caches/dev.bobbycoleman.omnipty",
    "~/Library/Preferences/dev.bobbycoleman.omnipty.plist",
    "~/Library/Saved Application State/dev.bobbycoleman.omnipty.savedState",
  ]
end
