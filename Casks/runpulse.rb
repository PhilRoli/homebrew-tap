cask "runpulse" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/PhilRoli/runpulse/releases/download/v#{version}/RunPulse-#{version}.app.zip"
  name "RunPulse"
  desc "Menu bar app for your GitHub Actions runs"
  homepage "https://github.com/PhilRoli/runpulse"

  depends_on macos: :ventura

  app "RunPulse.app"

  zap trash: "~/Library/Preferences/com.philipp.RunPulse.plist"

  caveats do
    <<~EOS
      RunPulse is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/RunPulse.app
      Sign in with `gh auth login`, or paste a token in Preferences.
    EOS
  end
end
