class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.2/kobana-darwin-arm64"
      sha256 "7ec658ee404a5e247f1e54a6733229ddf7448bad350b8efb344ca015d96c6d78"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.2/kobana-darwin-amd64"
      sha256 "3726defb4b5987fdebdb4eadc53daf4261d3d0cfd96140352577f29c1a5573e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.2/kobana-linux-arm64"
      sha256 "add3b38d35b97febd78267e656317892f22ac94c8318cd78f7cba60db7f70aa8"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.2/kobana-linux-amd64"
      sha256 "eebc67a0f3d346e295a049c6ca92edcd48b39f6bb5256c12b827409a57f16c2d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
