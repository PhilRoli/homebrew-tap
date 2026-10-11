cask "traintracker" do
  version "1.4.1"
  sha256 "0db23d6964eff22e2c171e97d8be1a691608e75219cb7db55779ae063d8b2fd8"

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
