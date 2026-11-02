cask "traintracker" do
  version "1.6.1"
  sha256 "9e38cd9df49f0cac3971f7d9e1b9749b5656813af1f4e0fb1363500aa724cb9c"

  url "https://github.com/PhilRoli/traintracker/releases/download/v#{version}/TrainTracker-#{version}.app.zip"
  name "TrainTracker"
  desc "Menu bar app for tracking Austrian trains"
  homepage "https://github.com/PhilRoli/traintracker"

  app "TrainTracker.app"

  zap trash: [
    "~/Library/Preferences/traintracker.plist",
  ]

  caveats do
    <<~EOS
      TrainTracker is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/TrainTracker.app
    EOS
  end
end
