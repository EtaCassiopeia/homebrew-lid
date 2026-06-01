class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.2"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "5e6d6612cedafd0346567c04210a657ad234cb666ba18d41655d3161085820b1"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "0c8a859e18d9ef73da4a1b91a7bfc87379ebd87a0f4ad758ab4f612e015dea39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.2/lid-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1fc685d556535f2997399c166cf1e40c7c36e976568fb0dc5346b8a93925ba8"
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
