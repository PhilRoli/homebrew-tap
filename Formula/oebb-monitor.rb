class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.2/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "85479591961486302713223353e716e592f7df694bc04c9265dc7a074756fbd7"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.2/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "10cd82ecbe4471ebb7b2d5ecb9e61f85b10ef421929b55c6ea4006040fe9633b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.2/oebb-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "70d6cda78ab63680d60554b4f62e084ce637299311c23f689a95fb48cf2dc81d"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
