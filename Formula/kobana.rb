class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.1.0/kobana-darwin-arm64"
      sha256 "79825ab5602ba1ac178f23879749211866523a404ea60316873faef580a8594b"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.1.0/kobana-darwin-amd64"
      sha256 "55c63b8b5b7768821857b191de6156b4c79246682f9db86dbdf4405567498248"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.1.0/kobana-linux-arm64"
      sha256 "b2cf835fa3f2ae5190a4afcececde810a449dde8042886590475f229227ff269"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.1.0/kobana-linux-amd64"
      sha256 "55f4549b4177adbce0479164691a153e0348da8957eb8da4ff440b5ee66d6d97"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
