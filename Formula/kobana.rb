class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.5.1/kobana-darwin-arm64"
      sha256 "293dce56caeb82e3a23cec422b743acee331f2d13714cc3358d78ea1b6017c27"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.5.1/kobana-darwin-amd64"
      sha256 "61e6a59a4ca1b6a90b456bf7eb1259ef132ec7fc35accccc177b70714de3a7ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.5.1/kobana-linux-arm64"
      sha256 "2880ca8e14ddaa623f9abef2f7890558c74a57d199e64fbdee61ed967ff077d9"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.5.1/kobana-linux-amd64"
      sha256 "795c13300f631d73f580c5231d424f7da850be99b40e0ec8c5935f8531f8a2ad"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
