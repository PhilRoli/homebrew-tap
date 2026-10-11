cask "songpulse" do
  version "1.0.3"
  sha256 "2ab6744cdccec1a93d7ab60c937bfc5211ea422b5669e97699dbee24f15388d5"

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
