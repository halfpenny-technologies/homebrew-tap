class Vibecodestorage < Formula
  desc "Encrypted storage CLI for small apps and coding agents"
  homepage "https://github.com/halfpenny-technologies/vibecodestorage-client"
  url "https://github.com/pauldodd123/homebrew-tap/releases/download/v0.1.3/vibecodestorage-0.1.3.tgz"
  version "0.1.3"
  sha256 "cb97188900a015a62a69237da76f9fee0793f3fbef8be7d4e48830ed707d4e16"
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
