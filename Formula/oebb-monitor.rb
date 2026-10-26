class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.11/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ea0f9187269a4fc071dd0baf08a24b8b7c4b0764fec0840e54cb0b1994528420"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.11/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4369eebcc36938784b95f3656284c94fdfd9722c535fcba885e483d3990b3d5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.11/oebb-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1be1f2a069bdc319f38fb5e1accd36e9f0462eb24478b7045bcc8a7bb4dc6f1f"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
