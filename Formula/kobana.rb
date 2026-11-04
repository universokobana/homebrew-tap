class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.13.0/kobana-darwin-arm64"
      sha256 "2e6057dd1e0662269b9224405c5b67d059349feca4b11c14962af45f3e50c7f6"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.13.0/kobana-darwin-amd64"
      sha256 "daa0d215100110889657d8d41df6d03a605bcee5eb20e52c716659992aabe841"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.13.0/kobana-linux-arm64"
      sha256 "c1b225fbe9d83d6bd6281de8a69b743aa35ca15bd8f2d147bba7d135a5f84d0a"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.13.0/kobana-linux-amd64"
      sha256 "d5c325190e264a203a586cb269cd4e2cfe2b745f139d14790649afd4b3e9f3ba"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
