class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.1/kobana-darwin-arm64"
      sha256 "760982525b1e9cee2c1fc0ef2731630d1e554ecf4aac4bfd22109e5218e5c835"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.1/kobana-darwin-amd64"
      sha256 "7c580f3812ae20eb67015b294135816fdceebe496b3be17927292c9b9867a7bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.1/kobana-linux-arm64"
      sha256 "633660ff04cbdef9a83cda9a3cc8c49076c26d0d33e47d3a28c1ad06c398660f"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.1/kobana-linux-amd64"
      sha256 "fba3869f152e02fa0b4b78dbac05cb1d78e9ed578db69b17a94fc31bc685c3f5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
