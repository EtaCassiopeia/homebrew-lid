class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "dc7fb07b1ca6c3f3590e9a0b6d759a99248757ce92e679fd5a4dcb0fc81655cb"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "296b518aabdf0c5bb2d03063cc72be31e22dceb2f4305a98d6a1b44bb97b29b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a0ba5457c6dcd61fc7ab3117d4d0728b5b02deefeb9975dbae0721e2f24adf7"
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
