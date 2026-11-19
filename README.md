# orilloai/tap

The Homebrew tap for [placket](https://github.com/orilloai/placket).

## Install

On macOS or Linux:

```sh
brew install --cask orilloai/tap/placket
```

Installing by the full name `orilloai/tap/placket` tells Homebrew to trust this one cask. To use the short name `placket` instead, trust it first:

```sh
brew trust --cask orilloai/tap/placket
brew install --cask placket
```

## Where the cask comes from

Each placket release attaches the cask `placket.rb`, written by GoReleaser. This repository holds a copy in `Casks/placket.rb`. placket's own workflows hold no token for this repository.

`.github/workflows/update.yml` runs once a day and by hand. It takes the cask from placket's latest published release, checks the signature on that release's `checksums.txt`, checks that each of the cask's four SHA-256s is an archive's line there, and commits the cask. So the cask may lag a release by up to a day. Running the workflow by hand after a release brings it at once.

`docs/release.md` in placket says how to check a release's signature and provenance yourself.

## Checks

`.github/workflows/tests.yml` runs `brew test-bot --only-tap-syntax` on every pull request and every push to `main`.
