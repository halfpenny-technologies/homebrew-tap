# VibeCodeStorage Homebrew tap

```sh
brew install halfpenny-technologies/tap/vibecodestorage
vibecodestorage --help
vibecodestorage init --json
```

Client-only JavaScript SDK and CLI, MIT licensed from version 0.1.3.
[Client source, licence and tests](https://github.com/halfpenny-technologies/vibecodestorage-client).
The API implementation stays private and is not included in the archive.

Requires Node.js 24, installed by the formula. The default endpoint is
https://api.vibecodestorage.com. Custom HTTPS or loopback endpoints can be set
with `init --endpoint URL`. Read the [pilot terms](https://vibecodestorage.com/terms.html)
before creating a store. Keep credentials and recovery files private.

This tap is separate from homebrew-core. Report installation issues here;
report security concerns through the [private contact form](https://vibecodestorage.com/contact.html?topic=security).

Client 0.1.4 saves private pending creation requests for safe retries. New stores
need a successful write within four hours; see the client README for recovery.

Client 0.2.0 also includes the browser Auth preview SDK. Hosted Auth must be enabled separately; installing the CLI does not enable it.

If you installed the old personal tap, migrate with:

```sh
brew update
brew untap pauldodd123/tap
brew tap halfpenny-technologies/tap
brew upgrade halfpenny-technologies/tap/vibecodestorage
```

If Homebrew refuses to untap an installed formula, uninstall `vibecodestorage` first, then untap and install from the new tap. Keep your private credential files; never delete them as part of a package upgrade.
