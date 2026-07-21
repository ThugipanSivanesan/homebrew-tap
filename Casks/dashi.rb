cask "dashi" do
  version "0.3.4"
  sha256 "b1e020d3aa4cec5d588bdac1bd7150296daff1f5f0a16a729b0f3be3013d1243"

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
