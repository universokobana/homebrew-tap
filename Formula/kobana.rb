class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.4.1/kobana-darwin-arm64"
      sha256 "dfca5087ebbec9c1b9a3fa0ede038c5e4822dd59f4ccd02f8d02e55bdd32e776"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.4.1/kobana-darwin-amd64"
      sha256 "b67bb94c4bd26684fcfabc30ad5303a0673e4cc8d576219aaeb167231e594a1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.4.1/kobana-linux-arm64"
      sha256 "9c41f1272bfb6b679e05659b1bd3faab287f41b81d54bcc432ae2737712f8d7c"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.4.1/kobana-linux-amd64"
      sha256 "1467fb0ed7a582179bd91339dd7d18417ced8e157d100bea16585fd150381692"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
