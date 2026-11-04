class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.12.1/kobana-darwin-arm64"
      sha256 "6d62a10e63a2e37b6b98bf9724ad431cef48787e4588b5e5d5487fab1c7fa5f8"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.12.1/kobana-darwin-amd64"
      sha256 "c0be2224d2ad2abae05ffb09032560137338135f207050f4e0808de77fce96cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.12.1/kobana-linux-arm64"
      sha256 "4181a99acacf94cbccf08ce45b65bd886b84eb2c8ebf19e4392ced6605e7f7a1"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.12.1/kobana-linux-amd64"
      sha256 "53aa0d2ef0a65a742031d1fcd94d36eceee2bff4678f4f46eadd8adecf4a3ba0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
