cask "runpulse" do
  version "1.0.2"
  sha256 "5b659353a5b94e52b5b6657c76ccb0c694a2426e5c0e08bd8db4b82be4a9b2db"

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
