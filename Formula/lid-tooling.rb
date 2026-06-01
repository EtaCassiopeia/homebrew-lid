class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a11d60e2c09f19d95fcaf6017dacf2dd7766f67efe7a850668e511af0cc00084"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "28ffdaa56640431a7761f89a1710c2b9d78fb43c9b443e3931c2a7951ffd0f92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71c0a2d2b05c7030e7db4f43d598956258a69c2eea682e7dc3f2c1d618f36ee1"
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
