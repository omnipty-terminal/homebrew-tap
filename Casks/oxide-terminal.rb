cask "oxide-terminal" do
  version "0.8.2"
  sha256 "45902898fd67acefb1731f1c7c9e3a617c29d68e04b3ad25a32a486f517ebe00"

  url "https://downloads.oxideterminal.com/oxide/#{version}/Oxide-#{version}.dmg"
  name "Oxide"
  desc "GPU-rendered terminal emulator written in Rust"
  homepage "https://oxideterminal.com/"

  auto_updates true
  depends_on macos: :monterey

  app "Oxide.app"

  zap trash: [
    "~/.config/oxide",
    "~/Library/Application Support/dev.bobbycoleman.oxide",
    "~/Library/Caches/dev.bobbycoleman.oxide",
    "~/Library/Preferences/dev.bobbycoleman.oxide.plist",
    "~/Library/Saved Application State/dev.bobbycoleman.oxide.savedState",
  ]
end
