# VibeCodeStorage Homebrew tap

```sh
brew install pauldodd123/tap/vibecodestorage
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
