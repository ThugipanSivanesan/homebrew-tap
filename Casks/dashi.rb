cask "dashi" do
  version "0.3.3"
  sha256 "8f7d0ae7489dc943ac67d3b841926a83d48a9d5b6ab2de173a91b8f5d8e542ae"

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
