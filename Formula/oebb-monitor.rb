class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.0/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bacf9c4b504302a8b07e3815ef182305681f42540762398fd90b6620fce57e19"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.0/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ecb22c7273db50abbc3e2213b33044e3cbec8e89f8e5341d8fdfbedb2a0aee72"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.3.0/oebb-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e12d327dd79096bac26f2c6e7a7b6892f37e4e9098a3caecaa0fb127faa208f"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
