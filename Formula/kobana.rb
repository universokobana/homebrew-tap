class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.1/kobana-darwin-arm64"
      sha256 "f64cb7742175cb8245cf6deb5b0fd5dd21d370912a9e57e3e96ae663f7f099de"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.1/kobana-darwin-amd64"
      sha256 "b5b6e2455b856c47c0a18e786d723bd916b5fff82bc5be942cf61943639ee5bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.1/kobana-linux-arm64"
      sha256 "15aa80d9367802109dd8390469236b62c0e2b079f8f9d309cd8fe2617bf4d620"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.2.1/kobana-linux-amd64"
      sha256 "cead265fabaa2d6a8692049271c942e47d29a9f9ae7f678a61161f638a375c38"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
