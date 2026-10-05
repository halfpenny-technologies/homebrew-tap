class Vibecodestorage < Formula
  desc "Encrypted storage CLI for small apps and coding agents"
  homepage "https://github.com/pauldodd123/homebrew-tap"
  url "https://github.com/pauldodd123/homebrew-tap/releases/download/v0.1.0/vibecodestorage-0.1.0.tgz"
  version "0.1.0"
  sha256 "bf4319804374bec48886ecec73d5d2c27b321204887175eb5a400a0aecc9462d"

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
