class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.3.0/lid-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "5841c0e3431b8a0d3fd0a30013dda1a7e4d227e841a895d193162129d3603089"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.3.0/lid-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d37f639b7304f998f133d5a4c47c3043695a5700fdff4cd103bf3de7ff461c62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.3.0/lid-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb953aa44d7def382328528ed3cfdf4569dd0f620de3888abdd8087d7b00d364"
    end
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.3.0/lid-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08baec165070140e76d8dd1eb11f5d0212245a3d8d1f68a00becbff2d2e5fa49"
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
