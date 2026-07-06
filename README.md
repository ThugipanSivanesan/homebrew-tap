# homebrew-tap

Homebrew tap for [Dashi](https://github.com/ThugipanSivanesan/Dashi) — a menu-bar
gauge for Claude and Codex subscription usage.

## Install

```sh
brew tap ThugipanSivanesan/tap
brew install --cask --no-quarantine dashi
```

`--no-quarantine` is required for now because the build is not yet notarized;
without it Gatekeeper blocks the app. To avoid typing it on every install/upgrade,
set it once in your shell profile:

```sh
export HOMEBREW_CASK_OPTS="--no-quarantine"
```

If you already have `Dashi.app` in `/Applications` from a manual download, add
`--force` on first install so Homebrew adopts it:

```sh
brew install --cask --force --no-quarantine dashi
```

## Upgrade

```sh
brew upgrade --cask dashi
```

(With `HOMEBREW_CASK_OPTS="--no-quarantine"` set, that's all you need.)

## Maintainers

Bump `version` and `sha256` in `Casks/dashi.rb` on each Dashi release. The
`sha256` is for the release's `Dashi-<version>.zip` asset:

```sh
shasum -a 256 Dashi-<version>.zip
```
