class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.12.0/kobana-darwin-arm64"
      sha256 "5991609495de132ca297dac7777439e361f517a440c1166f5996a56fa4239ed9"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.12.0/kobana-darwin-amd64"
      sha256 "33c66487e1ac37d19b6c41ce7e824897f90dfa87c2eec18b0b88a1c11dce4f4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.12.0/kobana-linux-arm64"
      sha256 "1bc6823befef3ac7cd902c0f540a5214494cfc752480431217dcb0979d7aa420"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.12.0/kobana-linux-amd64"
      sha256 "28adc61e15c9c6cd2a6ba1df2ca0aaac617488918c4081e869b5867aa6b54d59"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
