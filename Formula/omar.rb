class Omar < Formula
  desc "Agent orchestration dashboard for tmux"
  homepage "https://omarmy.ai"
  version "0.1.2"
  license "BSD-2-Clause"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-arm64.tar.gz"
      sha256 "b6bfd381b76a9ba6da126b6089e5078592074dd5e0b2442a41497ac325f6132f"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-amd64.tar.gz"
      sha256 "7be42f801ed5e580704f263ad5d980bc0e64af819a3a69a4849f352b29befd13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-arm64.tar.gz"
      sha256 "052ee18262d7cea16e05024733a6e89c25129df05925616f2a326c368a8aebf9"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-amd64.tar.gz"
      sha256 "b45701a4b54af749346278c027d21db658a1a6272d9522cf66372f76512c4330"
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
