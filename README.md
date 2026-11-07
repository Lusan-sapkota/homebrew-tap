# NoteSpark Homebrew tap

Install [NoteSpark](https://github.com/Lusan-sapkota/NoteSpark) on a Mac with Homebrew:

    brew install --cask lusan-sapkota/tap/notespark

Update it with `brew upgrade --cask notespark`. The cask follows the newest release that has the macOS builds (1.2.0 is the first).

NoteSpark for Mac is not signed or notarized by Apple (ad-hoc signature only), so the cask removes the quarantine flag after install. The app makes no update check; Homebrew, not NoteSpark, fetches new versions from GitHub releases. Remove it with `brew uninstall --cask notespark`.

GPL-3.0, the same as NoteSpark.
