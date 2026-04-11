class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.4.0/kobana-darwin-arm64"
      sha256 "9c7a791684995ccb88a782b56c12d31978507fc04c97d93e297085a364f3d2c2"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.4.0/kobana-darwin-amd64"
      sha256 "e1b3f0bfb91828df15edea77d4cc1a19b943efa75161681a157f50b7a14f3a78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.4.0/kobana-linux-arm64"
      sha256 "4d519c3439735ee2fcacfaad3d7760dc9dfc45b9010415a07e99681b515f795a"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.4.0/kobana-linux-amd64"
      sha256 "f19b66aa77e37e5363f2876f298a0ac07b12d0cb70aa821982b141e4d1bb2aba"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
