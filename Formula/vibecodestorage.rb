class Vibecodestorage < Formula
  desc "Encrypted storage CLI for small apps and coding agents"
  homepage "https://github.com/halfpenny-technologies/vibecodestorage-client"
  url "https://github.com/halfpenny-technologies/homebrew-tap/releases/download/v0.2.0/vibecodestorage-0.2.0.tgz"
  version "0.2.0"
  sha256 "cb7d72eada4fb66ee3f2934eaec08bc43dfdde380224faf9c5be928ab85fc41e"
  license "MIT"

  depends_on "node@24"

  def install
    libexec.install Dir["*"]
    (bin/"vibecodestorage").write <<~SH
      #!/bin/sh
      exec "#{Formula["node@24"].opt_bin}/node" "#{libexec}/src/cli.js" "$@"
    SH
  end

  test do
    assert_match "VibeCodeStorage", shell_output("#{bin}/vibecodestorage --help")
  end
end
