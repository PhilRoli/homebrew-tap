cask "internetcheck" do
  version "1.1.1"
  sha256 "ef65b92f104c818a23a483bf452d94502235bceb4bb3c25e77521e5662e5babd"

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
