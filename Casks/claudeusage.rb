cask "claudeusage" do
  version "1.2.2"
  sha256 "e4a668977e9de9e220f03abf6fb415cb0c9028c3dc690c2a94ea9527e6149126"

  url "https://github.com/PhilRoli/claudeusage/releases/download/v#{version}/ClaudeUsage-#{version}.app.zip"
  name "ClaudeUsage"
  desc "Menu bar app for tracking Claude Code usage limits"
  homepage "https://github.com/PhilRoli/claudeusage"

  depends_on macos: :ventura

  app "ClaudeUsage.app"

  zap trash: "~/Library/Preferences/com.philipp.ClaudeUsage.plist"

  caveats do
    <<~EOS
      ClaudeUsage is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/ClaudeUsage.app
      Allow Keychain access for `security` when prompted so it can read your
      Claude Code login.
    EOS
  end
end
