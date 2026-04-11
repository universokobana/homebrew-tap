class Kobana < Formula
  desc "CLI for the Kobana financial API (v1 and v2)"
  homepage "https://github.com/universokobana/kobana-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.3.0/kobana-darwin-arm64"
      sha256 "888bf9af650e9e6cddfb3be3ec310683809f414b806dee576ff663b562555e4e"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.3.0/kobana-darwin-amd64"
      sha256 "3c3cc9d98a65932dc01e5462e21a34c5c1ebd2f9d7878e5a10416277ae412335"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.3.0/kobana-linux-arm64"
      sha256 "a6cbdf04ff9e7ee196fb59d95bdc7d90a5ad3aceb2e99ad33d0b7138e1970468"
    end
    on_intel do
      url "https://github.com/universokobana/kobana-cli/releases/download/v0.3.0/kobana-linux-amd64"
      sha256 "002aed60312666b2b4aa50627b97774ebe9272aa2382eb9a2fd93342e7b6c7a1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "kobana"
  end

  test do
    assert_match "kobana", shell_output("#{bin}/kobana --version")
  end
end
