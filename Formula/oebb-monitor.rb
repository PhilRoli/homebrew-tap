class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.5/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "4fb76d869ce5210a021bf01145acaa0f898a699e0572c1c34b94bb90a46ce864"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.5/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1ece19ab09e9157463d0c357b28763997e3c2108b9ffd360ade0fd214d052661"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
