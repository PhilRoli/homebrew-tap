cask "weather" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
