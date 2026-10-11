cask "weather" do
  version "1.0.0"
  sha256 "7a6d38a23a1315d2d280abb7d38cbe2773aa178977b8b7bd89cd8761bf84e91f"

  url "https://github.com/PhilRoli/weather/releases/download/v#{version}/Weather-#{version}.app.zip"
  name "Weather"
  desc "Menu bar weather app showing conditions and forecast from Open-Meteo"
  homepage "https://github.com/PhilRoli/weather"

  depends_on macos: :ventura

  app "Weather.app"

  zap trash: [
    "~/Library/Preferences/com.philipp.weather.plist",
    "~/Library/Preferences/weather.plist",
  ]

  caveats do
    <<~EOS
      Weather is ad-hoc signed (not notarized). On first launch, right-click
      the app in Finder and choose "Open" to bypass Gatekeeper, or run:
        xattr -dr com.apple.quarantine /Applications/Weather.app
      Allow Weather to use your location when macOS asks (only for automatic location).
    EOS
  end
end
