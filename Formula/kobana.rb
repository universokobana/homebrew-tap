class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.6.0/kobana-darwin-arm64"
      sha256 "996ef439ba1f6d0b34086472ace158dde633aa03630938f2e123be830ace7942"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.6.0/kobana-darwin-amd64"
      sha256 "90e44fcd7b5f9aec4f7120aca1c8473dbd5e50032bba89bd5338cdcb794d6ce2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.6.0/kobana-linux-arm64"
      sha256 "393af53597399a4be1dea726cabb43959d1ce04a847783f6619149a9c87fd15d"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.6.0/kobana-linux-amd64"
      sha256 "8e1503e2fceb8caa6befd5b807a0460b1aa65a29f5e241e030973db3818cdd0d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
