class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.8.0/kobana-darwin-arm64"
      sha256 "8e7bc6a1fa8e0af0a614fb88bd3c0ac92259f1fbcc069a1cf4f3327fe36fdf6c"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.8.0/kobana-darwin-amd64"
      sha256 "97113a89ea1a0f7e647d878277ed359db5d392e1731fe0656485f26fb68d2209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.8.0/kobana-linux-arm64"
      sha256 "f06a2b02cc2eaaf0919432e5c3d2eb60d2bb97e79c40170cb97f6244dc3e2e63"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.8.0/kobana-linux-amd64"
      sha256 "5caf9202a940bda00c01219973d54354d7caeeae24e30bd73d3bd66fd321abe7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
