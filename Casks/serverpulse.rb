cask "serverpulse" do
  version "1.0.1"
  sha256 "fe9cd49dcce89154c4366e920c837380fb07601b7f7488d3ad6df4cbbcab01ad"

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
