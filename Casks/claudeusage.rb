cask "claudeusage" do
  version "1.1.2"
  sha256 "5b5e0bdd55bee0ae235fa3cb4923d331ec3ce82a3501d9a40b10035f3e4929b7"

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
