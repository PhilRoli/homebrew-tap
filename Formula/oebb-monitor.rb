class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.9/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7387af8a598a80ab76d854cf4439cd51eb9a71d0bfcd7061eadfaef33c878ee9"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.9/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "538c075c6800ce1f3b185df3a983c2fb4d80266f1f988e15073b3880f5ee6b9e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.9/oebb-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd529be403d5f20ee500134e503646ad683d6b8f798769b596ac8402ebf645a9"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
