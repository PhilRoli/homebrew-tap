cask "songpulse" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/PhilRoli/songpulse/releases/download/v#{version}/SongPulse-#{version}.app.zip"
  name "SongPulse"
  desc "Menu bar app showing your current Spotify song with playback controls"
  homepage "https://github.com/PhilRoli/songpulse"

  depends_on macos: :ventura

  app "SongPulse.app"

  zap trash: "~/Library/Preferences/com.philipp.SongPulse.plist"

  caveats do
    <<~EOS
      SongPulse is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/SongPulse.app
      Allow SongPulse to control Spotify when macOS asks (Automation permission).
    EOS
  end
end
