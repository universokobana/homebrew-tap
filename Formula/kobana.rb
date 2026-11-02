class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.0/kobana-darwin-arm64"
      sha256 "e921c33c38e97d242cfa09f1dcc63e5825e0b97b654878fe3677e7a950296597"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.0/kobana-darwin-amd64"
      sha256 "01b1db0f529e72fc734ea684f16f9d045d386e055637d45cdcacf9637d797165"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.0/kobana-linux-arm64"
      sha256 "1c853e5a9467959ca44dbd503018348e52c9544f8e4fd7c58cb3232a4df0bb93"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.10.0/kobana-linux-amd64"
      sha256 "71c6b69bc5c6a5e13999c977a19f4f04d80121ff4354604cdb57af1132d75bce"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
