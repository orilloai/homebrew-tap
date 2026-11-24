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

`.github/workflows/update.yml` runs every hour and by hand. It takes the cask from placket's latest published release, checks the signature on that release's `checksums.txt`, and checks that each of the cask's four SHA-256s is an archive's line there. When only the cask's version and SHA-256s change, the lines `checksums.txt` vouches for, it pushes the cask to `main`, so the cask follows a release within the hour with no step after the release. When anything else in the cask changes, such as an install step, it opens a pull request on `update-cask` for the maintainer to review instead, since `placket.rb` itself is not signed. Running the workflow by hand after a release brings the cask at once.

`docs/release.md` in placket says how to check a release's signature and provenance yourself.

## Checks

`.github/workflows/tests.yml` runs `brew test-bot --only-tap-syntax` on every pull request and every push to `main`.
