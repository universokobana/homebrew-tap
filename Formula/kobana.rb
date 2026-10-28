class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.7.0/kobana-darwin-arm64"
      sha256 "e1d3216384d0f902f7f28df2a8dfcf820ef84b5f0909b7a2a1ee6a807e755257"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.7.0/kobana-darwin-amd64"
      sha256 "19c6f1fa9b3cdb840b3fd4ea78bf4c53914f232a1c3668f186e568a54d56fae6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.7.0/kobana-linux-arm64"
      sha256 "c05c36f943d93908d612c06b24a16fe8641e365f8cf7a4400cac2d34cb16f37b"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.7.0/kobana-linux-amd64"
      sha256 "e6a857d58a0909902bfe60a09947676490fa98a2f8859b4b5d02000d398f6af5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
