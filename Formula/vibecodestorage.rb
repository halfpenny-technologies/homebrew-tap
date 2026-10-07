class Vibecodestorage < Formula
  desc "Encrypted storage CLI for small apps and coding agents"
  homepage "https://github.com/halfpenny-technologies/vibecodestorage-client"
  url "https://github.com/halfpenny-technologies/homebrew-tap/releases/download/v0.2.2/vibecodestorage-0.2.2.tgz"
  version "0.2.2"
  sha256 "93970a77a85c0b5529b970e4f9513aea0802aa98bacd238f440863d9ffb83cec"
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
