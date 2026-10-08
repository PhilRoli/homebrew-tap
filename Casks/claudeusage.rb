cask "claudeusage" do
  version "1.1.1"
  sha256 "52e39f261ad63fd7a711e02a9fc1dc985b0e5ecc525b0c1936d98479c4b8e7eb"

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
