class OebbMonitor < Formula
  desc "Terminal UI for live ÖBB departure and arrival data"
  homepage "https://github.com/PhilRoli/oebb-monitor"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.10/oebb-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "355b025cf8bbd788e4a948151f08ac21074beeb998691ff88320595cc46f5416"
    end

    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.10/oebb-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e74a1150ec88f9aa4b09e5872f43fece3d70f9eab77179d1286575a181e3f0bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/PhilRoli/oebb-monitor/releases/download/v0.2.10/oebb-monitor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45e094edde625110868ef75f8951aa63646d34378800cf9a955783afb1f42f5c"
    end
  end

  def install
    bin.install "oebb-monitor"
  end

  test do
    assert_match "oebb-monitor #{version}", shell_output("#{bin}/oebb-monitor --version")
  end
end
