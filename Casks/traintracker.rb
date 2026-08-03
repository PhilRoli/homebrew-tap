cask "traintracker" do
  version "1.0.1"
  sha256 "c8a5c2ed05fe87088e7dc067f0b35efda9ac04ee2c1d70b6a8797f472756cbdd"

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
