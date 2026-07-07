# Security Policy

## Reporting a vulnerability

Please report security issues privately via GitHub's
[private vulnerability reporting](https://github.com/ThugipanSivanesan/homebrew-tap/security/advisories/new)
rather than opening a public issue. You can expect an initial response within a
few days.

## Scope

This repository is a Homebrew tap: it distributes cask definitions, not the
application binaries themselves. The most security-relevant properties here are:

- **Download integrity.** Each cask pins a `sha256` of the release asset, so
  Homebrew refuses to install a download that has been tampered with. Never
  merge a version bump whose `sha256` was not computed from the official
  release asset.
- **Unsigned builds.** Dashi is not yet code-signed or notarized, so the README
  instructs users to clear the Gatekeeper quarantine flag. This is an accepted,
  documented trade-off that goes away once the app is notarized; until then,
  users are trusting the pinned `sha256` for integrity.

## Reporting an issue with Dashi itself

For vulnerabilities in the application, report against
[ThugipanSivanesan/Dashi](https://github.com/ThugipanSivanesan/Dashi).
