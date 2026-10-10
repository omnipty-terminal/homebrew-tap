cask "oxide-terminal" do
  version "0.9.0"
  sha256 "238791d1baeb6758f7cb415d46de2a7bc88a67e76bd7128fbbcd4e8c8eb8c185"

  url "https://downloads.omnipty.com/omnipty/#{version}/OmniPTY-#{version}.dmg"
  name "Oxide (renamed to OmniPTY)"
  desc "GPU-rendered terminal emulator written in Rust — now called OmniPTY"
  homepage "https://omnipty.com/"

  depends_on macos: :monterey

  app "OmniPTY.app"

  caveats <<~EOS
    Oxide is now OmniPTY. This cask installs OmniPTY 0.9.0 one last time.
    To keep getting updates through Homebrew, switch casks:
      brew uninstall --cask oxide-terminal && brew install --cask omnipty-terminal/tap/omnipty
    (The app also updates itself, so this is only for brew bookkeeping.)
  EOS

  zap trash: [
    "~/.config/oxide",
    "~/.cache/oxide",
    "~/Library/Application Support/dev.bobbycoleman.oxide",
    "~/Library/Caches/dev.bobbycoleman.oxide",
    "~/Library/Preferences/dev.bobbycoleman.oxide.plist",
    "~/Library/Saved Application State/dev.bobbycoleman.oxide.savedState",
  ]
end
