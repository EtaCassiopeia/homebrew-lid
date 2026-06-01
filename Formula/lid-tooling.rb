class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.3/lid-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "a3f2c75b967b2158ac340b5829043c496981de37b0e8cd67b18433e310308fd5"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.3/lid-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "826dcfc68013868bcc5ac197865b90fdc7a7762361e42a3c6d708e5f511b2f14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.3/lid-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7027f2298a22910c61ae8ca6bb1c622240c9f709be4d6872a1892869afdd1c4c"
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
