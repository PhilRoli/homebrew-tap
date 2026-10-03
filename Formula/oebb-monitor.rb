class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.6/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "373fb7398218226774e5782fbc7147babbdb52d6ca7ab2bf5c7f3b61c8a17835"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.6/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cac6cbf2da899f4e7331c3d939817eed10c2debe2de1f226b4d0b9943c26e4e0"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
