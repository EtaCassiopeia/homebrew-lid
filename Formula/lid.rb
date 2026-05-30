class Lid < Formula
  desc "CLI and MCP server for Linked-Intent Development"
  homepage "https://github.com/EtaCassiopeia/lid-tooling"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  # Checksums and URLs are updated automatically by the release pipeline
  # (release.yml → update-homebrew-tap job) on every v* tag push.

  on_macos do
    on_arm do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v#{version}/lid-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v#{version}/lid-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/EtaCassiopeia/lid-tooling/releases/download/v#{version}/lid-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
