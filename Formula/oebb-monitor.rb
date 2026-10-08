class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.7/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a9db063b826178f7fa66b7cb8a502a7fe4ef987c7af5118f1ec2b40aebf1d92e"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.7/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7a7a43575d4798655924695b1e71e306329e4b38e5e0e0867cb6e3df9206ff9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.7/oebb-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0ca912aba052248403ac7d755bc472bee362712a245564ee2f6c173a8e8d53c"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
