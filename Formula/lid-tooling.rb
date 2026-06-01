class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.4/lid-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "faf42742ae7f1bf05d39d37ba9c27b7ee3f3e17d19021e7eb182b2133e8ac8b0"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.4/lid-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "57b961903d44758082532a2ef457e9a6c8771ed314ca1e7708a212eed364fd31"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.4/lid-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d710e52fe2c5b816c24ec6c962d6a2e7697e47818611ca3c2de805298ee6b5fa"
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
