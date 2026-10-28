cask "serverpulse" do
  version "1.3.0"
  sha256 "7c31216192f8ed7080bd3b968ae986f72088f4ad592679a294eb250df841494f"

  url "https://github.com/PhilRoli/serverpulse/releases/download/v#{version}/ServerPulse-#{version}.app.zip"
  name "ServerPulse"
  desc "Menu bar app for monitoring Docker servers"
  homepage "https://github.com/PhilRoli/serverpulse"

  depends_on macos: :ventura

  app "ServerPulse.app"

  zap trash: "~/Library/Preferences/com.philipp.ServerPulse.plist"

  caveats do
    <<~EOS
      ServerPulse is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/ServerPulse.app
      Each server needs the ServerPulse agent; see the README.
    EOS
  end
end
