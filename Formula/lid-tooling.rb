class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.1/lid-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "ec0d6133f1b965016add0b8932e40617b66ce5b4ef63e039c1a89c9f0887f2b1"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.1/lid-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "0f1678daf3addd0819c08d52380231ba88128f9b04afe1d2ed733f6fe7706137"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.1/lid-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d74532bab291bc873abd5eb87dd1e1750d7f201cb827c9c0f329e963ab9d4bcc"
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
