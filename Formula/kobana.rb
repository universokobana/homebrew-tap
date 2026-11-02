class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.9.0/kobana-darwin-arm64"
      sha256 "bcd65db5d4e52db21b3c3c05ac80be9a79a948ecc4333aa12b2e09fca84c723f"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.9.0/kobana-darwin-amd64"
      sha256 "feac7bc7006db51842c19e8b2844c5f008591d5115bb5add6f90e91efa1c0328"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.9.0/kobana-linux-arm64"
      sha256 "048a573c29a680f6e7730e1bf4499c14925b9967eab48c2e70fececb05a42854"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.9.0/kobana-linux-amd64"
      sha256 "af8e01740ee3e29a7f9396643368af80b40b41fa2950fd65417968aeb934127b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
