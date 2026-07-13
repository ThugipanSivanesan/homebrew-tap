cask "dashi" do
  version "0.3.2"
  sha256 "c9448163fffdcfab780ad7a558066afc7aa9f9d0f98a65e15e05ae098e5e4da6"

  url "https://github.com/ThugipanSivanesan/Dashi/releases/download/v#{version}/Dashi-#{version}.zip"
  name "Dashi"
  desc "Menu-bar gauge for Claude and Codex subscription usage"
  homepage "https://github.com/ThugipanSivanesan/Dashi"

  # Keep this false while builds are unsigned and Sparkle in-app updates are not
  # yet configured: it lets `brew upgrade` pick up new versions from this tap.
  # Flip to true once the app is notarized and Sparkle (SUPublicEDKey) is live,
  # so Homebrew defers self-updates to Sparkle.
  auto_updates false
  depends_on macos: :sonoma

  app "Dashi.app"

  zap trash: "~/Library/Preferences/com.dashi.app.plist"
end
