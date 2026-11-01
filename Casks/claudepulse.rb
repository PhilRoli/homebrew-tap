cask "claudepulse" do
  version "1.1.1"
  sha256 "7c21d85aa586930b86d475500bd075561949448f53bb6579f7e35de1ec2fcb4e"

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
