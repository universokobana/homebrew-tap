class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.11.0/kobana-darwin-arm64"
      sha256 "03b317f0caf6cab0205a7c9df89fe9350c54d16895fe3511d47cf57930803c78"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.11.0/kobana-darwin-amd64"
      sha256 "6f65ed1475c983b00c624e09a678c99a8ac94f2738987a25b295f879272ab7e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.11.0/kobana-linux-arm64"
      sha256 "9a4fced8111cb0ec6f23045dadb9842bb1ec2930befaa94bad435e3a2a112146"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.11.0/kobana-linux-amd64"
      sha256 "582023f2b2d9a370872bc35424c5aa38ae0d75efe31d62444aa1bb097b8fcd9d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
