class Vibecodestorage < Formula
  desc "Encrypted storage CLI for small apps and coding agents"
  homepage "https://github.com/pauldodd123/homebrew-tap"
  url "https://github.com/pauldodd123/homebrew-tap/releases/download/v0.1.1/vibecodestorage-0.1.1.tgz"
  version "0.1.1"
  sha256 "c2330ddd6ffcb2c13c4f73af4789ba43a449d9c7d3a0a81a7cc7e60a22b23d9c"

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
