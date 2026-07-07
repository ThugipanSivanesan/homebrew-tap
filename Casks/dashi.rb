cask "dashi" do
  version "0.2.0"
  sha256 "5770e09f1039cbba83edf1ff638221d77e6bb5106efbc53f68fa0b1cf41ff765"

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
