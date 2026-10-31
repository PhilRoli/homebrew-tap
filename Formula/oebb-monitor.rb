class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.1/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bc4b91b698d0a0c2cc6936a705d1914f142ab17c87d575e6b7a477caa6898e12"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.1/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b423fbeca039fd543c0a32982eab1b9635be84cab73674dc8935bffc08558d68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.1/oebb-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31757547a0c40e526eb221e180417d02bade6ea75fded84ded191dc69eb60b53"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
