# Homebrew formula for TokenLens.
# Auto-published by the v0.2.1 release. To bump: regenerate from
# https://github.com/sisodiabhumca/tokenlens/releases.

class Tokenlens < Formula
  desc "Token-aware observability + filtering layer for AI coding agents"
  homepage "https://github.com/sisodiabhumca/tokenlens"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sisodiabhumca/tokenlens/releases/download/v#{version}/tokenlens-aarch64-apple-darwin.tar.gz"
      sha256 "9899513eb480a9db2f839d4728c841c20466453e2d8e021d18ea1182acb07054"
    end
    on_intel do
      url "https://github.com/sisodiabhumca/tokenlens/releases/download/v#{version}/tokenlens-x86_64-apple-darwin.tar.gz"
      sha256 "7fade978d26d22ab76f22351ca2372556a9a4cf96815aa0f2e818330e90a5599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sisodiabhumca/tokenlens/releases/download/v#{version}/tokenlens-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2da5cb97c1f9ba9df5f6f3afeb8db860ee751ca4b2a836c1c1a43842cefa461e"
    end
    on_intel do
      url "https://github.com/sisodiabhumca/tokenlens/releases/download/v#{version}/tokenlens-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d2be93c595e3f3a7fae1de5631e14887232db457d75c1ed27f54bcecf9ad868"
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
