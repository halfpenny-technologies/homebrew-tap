class Vibecodestorage < Formula
  desc "Encrypted storage CLI for small apps and coding agents"
  homepage "https://github.com/pauldodd123/homebrew-tap"
  url "https://github.com/pauldodd123/homebrew-tap/releases/download/v0.1.2/vibecodestorage-0.1.2.tgz"
  version "0.1.2"
  sha256 "44ddcf10959a6b588dd692b4abbdd8cc0727be65ff552ecc82e67722749a2470"

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
