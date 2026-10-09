cask "omnipty" do
  version "0.9.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
