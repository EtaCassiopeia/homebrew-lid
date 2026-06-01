class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "dd498fb160dc22150fe6f27c61ecda2ebb84dcb18062c8815f4b3efcc1a260d0"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "ec90eae72e0ce0b049f5f252a1cb16acdaa215fdc8b650380512d70829cd195e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0407a9fee2604e7d42ab5d4833943a060af1158f1cd3f502000c4e8d07dd7bb"
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
