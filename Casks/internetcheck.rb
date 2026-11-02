cask "internetcheck" do
  version "1.1.0"
  sha256 "ab8d16bd6fa466cc1342130e72c56dd46c3caed5c17aa14341b616a3d4905c57"

  url "https://github.com/PhilRoli/internet-check/releases/download/v#{version}/InternetCheck-#{version}.app.zip"
  name "InternetCheck"
  desc "Menu bar app that shows whether you're online and which connection you use"
  homepage "https://github.com/PhilRoli/internet-check"

  depends_on macos: :ventura

  app "InternetCheck.app"

  zap trash: "~/Library/Preferences/com.philipp.InternetCheck.plist"

  caveats do
    <<~EOS
      InternetCheck is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/InternetCheck.app
    EOS
  end
end
