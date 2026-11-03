class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.3/kobana-darwin-arm64"
      sha256 "6096142931b281e418eb6a3371cb94ea45cf3162cd0130841effea02ba945a7e"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.3/kobana-darwin-amd64"
      sha256 "58d4f437b65867979a71a1d5c2538b1b01f51e75bb97f983a8c22592e442af16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.3/kobana-linux-arm64"
      sha256 "df4a02c57ba4cf6b036c9b500d34485114e1f0df6c2726b9baf98805efe8c690"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.3/kobana-linux-amd64"
      sha256 "3f8f7c7cd79264f8ce62e729a5b5ebd02ff1e45a10c772c77181ffc53fe7e96d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
