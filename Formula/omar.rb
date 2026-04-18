class Omar < Formula
  desc "Agent orchestration dashboard for tmux"
  homepage "https://omarmy.ai"
  version "0.2.2"
  license "BSD-2-Clause"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-arm64.tar.gz"
      sha256 "3c8b38c8ab472672bac83c233ae6a11a3dd4f90b219f74c894c69944954f8ed3"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-amd64.tar.gz"
      sha256 "d0352d3f8317ef8394d92a887bcf9e15b3db9914657782fd265a85a4449d336c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-arm64.tar.gz"
      sha256 "a24d2d24a4b5ebd834962db47cd0a2f7385dd0dc071e19d5585f56deb4b57779"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-amd64.tar.gz"
      sha256 "3621f0c0d2d345f280e6e8e6cec4c2759f52dec74be32fead1054197222f2a1c"
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
