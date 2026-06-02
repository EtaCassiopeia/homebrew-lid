class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.5"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.5/lid-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "7ec63505fb8332037fdaadd4c64dd677ebd3cb02b3b08f7c8853aa4d8e20430f"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.5/lid-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "c2988587aa9e607c3952ab53f089172c05637ea20f04b2b1cc4f45dc2d75672c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.5/lid-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b299ec72b59b3d9b689089e64f3955586186345315c692bd623a5fab135ddb47"
    end
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.5/lid-v0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b2c7f6b4f7dbdab2b8213437af4f24fd09ed7f40579d96d840554892c7cb41f"
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
