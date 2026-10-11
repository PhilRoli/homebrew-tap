cask "claudeusage" do
  version "1.1.3"
  sha256 "0c2658c86ca5e753dc6f42a59497d9e1aa5769e6f60c10ffdc8bc2a42bb9b06f"

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
