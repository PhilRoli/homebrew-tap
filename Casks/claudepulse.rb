cask "claudepulse" do
  version "1.2.0"
  sha256 "1412306a1ed5d729b57a6fff1e2e8710f1fcaa399f3eb7059bf5afe539fef99a"

  url "https://github.com/PhilRoli/claudepulse/releases/download/v#{version}/ClaudePulse-#{version}.app.zip"
  name "ClaudePulse"
  desc "Menu bar app for your Claude Code sessions"
  homepage "https://github.com/PhilRoli/claudepulse"

  depends_on macos: :ventura

  app "ClaudePulse.app"

  zap trash: "~/Library/Preferences/com.philipp.ClaudePulse.plist"

  caveats do
    <<~EOS
      ClaudePulse is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/ClaudePulse.app
      Then open Preferences and install the Claude Code hooks.
    EOS
  end
end
