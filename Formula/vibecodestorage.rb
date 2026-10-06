class Vibecodestorage < Formula
  desc "Encrypted storage CLI for small apps and coding agents"
  homepage "https://github.com/halfpenny-technologies/vibecodestorage-client"
  url "https://github.com/pauldodd123/homebrew-tap/releases/download/v0.1.4/vibecodestorage-0.1.4.tgz"
  version "0.1.4"
  sha256 "d64379e41d049344f53aeba217b932af58130ed718af4f0bbbdd044d3cfceafc"
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
