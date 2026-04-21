class Omar < Formula
  desc "Agent orchestration dashboard for tmux"
  homepage "https://omarmy.ai"
  version "0.2.4"
  license "BSD-2-Clause"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-arm64.tar.gz"
      sha256 "f52a1b7c68c55a4334c571c1e5d42ce572fdaae5aca46c0748d3b680a5488c44"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-amd64.tar.gz"
      sha256 "7f714acf253b8f8d0d8b59ec3e39ab7371bc368a65726be7b1e6178c8e0e5a3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-arm64.tar.gz"
      sha256 "36ca2895c639237b630fce078bb97d0625b005fc1bc7400615fdbe3fb71bfca4"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-amd64.tar.gz"
      sha256 "e183c2dd5b4a147316ec2cfcc59968be6084dc94393a9b3577c519aec5f3dffa"
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
