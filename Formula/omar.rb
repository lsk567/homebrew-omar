class Omar < Formula
  desc "Agent orchestration dashboard for tmux"
  homepage "https://omarmy.ai"
  version "0.2.6"
  license "BSD-2-Clause"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-arm64.tar.gz"
      sha256 "29e21b05cb7c2f2c436289020192e7be9f47d9792d44ed220166c83a2cc75a9c"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-amd64.tar.gz"
      sha256 "2e710c0b5b544537ff8d354dd6bd1cc2e4db678689ef8413b9e4b81e504672a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-arm64.tar.gz"
      sha256 "6d33df884c2b806b29e706811f6f9ab4af0a3cd5893e05c8097a5408f93e10b6"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-amd64.tar.gz"
      sha256 "0edd6832810865a0ba708b535e46e5b0ee54468c7aa2709b2aae541d69650703"
    end
  end

  def install
    bin.install "omar"
    bin.install "omar-slack"
    bin.install "omar-computer"
  end

  test do
    assert_match "omar", shell_output("#{bin}/omar --help", 2)
  end
end
