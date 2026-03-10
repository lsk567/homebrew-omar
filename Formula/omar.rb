class Omar < Formula
  desc "Agent orchestration dashboard for tmux"
  homepage "https://omarmy.ai"
  version "0.1.0"
  license "BSD-2-Clause"

  depends_on "tmux"

  on_macos do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-arm64.tar.gz"
      sha256 "e5b3006b5691235520e05c4799522f9b19ad82ce01d43dec86f7d47568845b8f"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-darwin-amd64.tar.gz"
      sha256 "05cecb9f787aaa62e1030c4b654032adb8625fc4581f0c86dfc6ba8b06c9e505"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-arm64.tar.gz"
      sha256 "7360c33e7a678ba6f43b0a85a7cb57b1c22a68f85a205eb880e8a14148f9c741"
    end
    on_intel do
      url "https://github.com/lsk567/omar/releases/download/v#{version}/omar-linux-amd64.tar.gz"
      sha256 "95a305f3e2c39515e3515dca8fffc251a973b1dc1b5f8b9009e7dee2b61110e2"
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
