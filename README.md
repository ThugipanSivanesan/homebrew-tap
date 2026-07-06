# homebrew-tap

Homebrew tap for [Dashi](https://github.com/ThugipanSivanesan/Dashi) — a menu-bar
gauge for Claude and Codex subscription usage.

## Install

```sh
brew tap ThugipanSivanesan/tap
brew trust thugipansivanesan/tap     # one-time: approve this third-party tap
brew install --cask dashi
```

If you already have `Dashi.app` in `/Applications` from a manual download, add
`--force` so Homebrew adopts it: `brew install --cask --force dashi`.

### Clear Gatekeeper (unsigned build)

The build is not yet notarized, so macOS quarantines it. After each install or
upgrade, clear the quarantine flag once:

```sh
xattr -dr com.apple.quarantine /Applications/Dashi.app
```

(Or, the first time, right-click `Dashi.app` in Finder → **Open**.) This step
disappears once the app is signed and notarized.

> Note: older guides mention `brew install --no-quarantine`, but that flag was
> removed in Homebrew 6. Use the `xattr` command above instead.

## Upgrade

```sh
brew upgrade --cask dashi
xattr -dr com.apple.quarantine /Applications/Dashi.app   # until the build is notarized
```

## Maintainers

`Casks/dashi.rb` is bumped automatically by Dashi's release workflow (the
`bump-tap` job) on each `v*` tag — no manual edits needed. To bump by hand, set
`version` and `sha256` (of the release's `Dashi-<version>.zip`):

```sh
shasum -a 256 Dashi-<version>.zip
```
