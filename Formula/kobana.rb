class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.0/kobana-darwin-arm64"
      sha256 "e35eb0a20bbf718e1368d84d0f87073734ed758ceaf6c89a735d6e0ba14ecb15"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.0/kobana-darwin-amd64"
      sha256 "fe1b673aae445c4acd5893ac04c413defa0bf2b9c584fa004f649fea2504de38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.0/kobana-linux-arm64"
      sha256 "0b950d292f06ff51a9299a2f01975688d671e9b0ce5062f76373809b70ea4c2d"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.0/kobana-linux-amd64"
      sha256 "299c411508eebe93a04cbe445dbe6fb35eaa41c08700f286ec0d2b65e5345a12"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
