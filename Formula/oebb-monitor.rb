class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.8/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "470955840b49239eceebfb965556c6c683aa571a6d0d2257710598a3b3148158"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.8/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dbea59df73fea4c39f7571fabdafe33bff59c48112c45698e37203c0f1295ce5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.8/oebb-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4000829751e436f9e6c4257c78382880c66b1c2868ae1b7d250928c6b9f43fc1"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
