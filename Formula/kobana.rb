class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.2/kobana-darwin-arm64"
      sha256 "de66f1eb6f86318b213a2d7c2f1d423ef5da70fa574dd80e99e00d49faf66b6c"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.2/kobana-darwin-amd64"
      sha256 "d6ed9f4e7d73db4a1271d291cf2b006f15abe49b0f9a44285dc5f64521acebc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.2/kobana-linux-arm64"
      sha256 "cb7f3c6a476b89a5da4671d55c95512c331c3653a9cd4f2f22a3c7a220189a03"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.2/kobana-linux-amd64"
      sha256 "ce54fad3ad3008dd074f6b69776206131f2c5b1ad1bedaa77ff9e2e8e2621835"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
