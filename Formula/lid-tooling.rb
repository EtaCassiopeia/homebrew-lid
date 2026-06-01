class LidTooling < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "e81eaca0f110938c770c0d29215978eccd988358e450b200380e085eb1f70c1b"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "d911cecfb462caf4baaedc5db87b387ed627ff0f98d8bccf50eded1bfbd48198"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v0.2.0/lid-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "297f5a30ba6c2c36fc83722df1ed67ef61afc48f629ad73725e91670fc471799"
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
