class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.5.0/kobana-darwin-arm64"
      sha256 "5c4d8f7b97073071e04ffae93886fe86f48dbbc93684382e9e5b493c02152726"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.5.0/kobana-darwin-amd64"
      sha256 "f81cd16759b8f804c6d09f51b09b08318dcf81a39475f5589ffa35a6f532901f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.5.0/kobana-linux-arm64"
      sha256 "707bc00bea0222a086a51de02df6f70df5e7dfdff93b93fd81d39e248f357e23"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.5.0/kobana-linux-amd64"
      sha256 "0581180894082acf8848bc50ca668eef10c9b83208982169cf53a704dd47b37c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
