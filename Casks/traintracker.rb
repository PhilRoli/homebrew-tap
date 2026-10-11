cask "traintracker" do
  version "1.3.0"
  sha256 "1a7c4e48b72035011928c283c02457404c272f961afab1a2048e9cb9479b3908"

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
