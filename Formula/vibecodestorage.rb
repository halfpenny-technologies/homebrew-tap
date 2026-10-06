class Vibecodestorage < Formula
  desc "Encrypted storage CLI for small apps and coding agents"
  homepage "https://github.com/halfpenny-technologies/vibecodestorage-client"
  url "https://github.com/halfpenny-technologies/homebrew-tap/releases/download/v0.2.1/vibecodestorage-0.2.1.tgz"
  version "0.2.1"
  sha256 "fc73f139010971f32c615a228a7aa30ca6efb893d7620460e0185b3d297b1d01"
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
