# Homebrew formula for TokenLens.
# Auto-published by the v0.2.2 release. To bump: regenerate from
# https://github.com/sisodiabhumca/tokenlens/releases.

class Tokenlens < Formula
  desc "Token-aware observability + filtering layer for AI coding agents"
  homepage "https://github.com/sisodiabhumca/tokenlens"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sisodiabhumca/tokenlens/releases/download/v#{version}/tokenlens-aarch64-apple-darwin.tar.gz"
      sha256 "894ae37171e1f246493b4508570a702974d29a9e174fc0374bc9f93aae781a96"
    end
    on_intel do
      url "https://github.com/sisodiabhumca/tokenlens/releases/download/v#{version}/tokenlens-x86_64-apple-darwin.tar.gz"
      sha256 "5dbbffe98f4c95622164286944eb2d5e3c4956a793d5c97628f5da0a5d040d98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sisodiabhumca/tokenlens/releases/download/v#{version}/tokenlens-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35a63c603d29923b0def412b3c0a410429228245275b1fe84a34eec821391334"
    end
    on_intel do
      url "https://github.com/sisodiabhumca/tokenlens/releases/download/v#{version}/tokenlens-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00e97f27723633d84eb977d18d24d7128558b6342b0edd53499fc41cb9d3678b"
    end
  end

  def install
    bin.install "tokenlens"
    (share/"tokenlens/hooks").install Dir["hooks/*"] if Dir.exist?("hooks")
    doc.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_match "tokenlens", shell_output("#{bin}/tokenlens --version")
  end
end
