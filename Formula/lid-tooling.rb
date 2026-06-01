class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "bab2f13943b722fad381a7bc12678ef0dc354edfad123e49621f6cb6abe6cceb"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "f09e85c7bb2295e0f4360f2cfa1a75ccc3116867c33c2086345864a3e4b6d4fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f8b3a86af876c92479fbe5556c01a18660733fa6c41a9c08eed86fbcdfde91b"
    end
  end

  def install
    bin.install "lidc"
    bin.install "lid-mcp"
    bin.install "lid-lsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lidc --version")
  end
end
