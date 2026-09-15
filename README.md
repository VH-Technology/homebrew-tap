# VH-Technology Homebrew tap

Homebrew casks for [VH-Technology](https://github.com/VH-Technology) apps.

## bluemacaw

[bluemacaw](https://bluemacaw.com) is a speech-to-text dictation app for macOS and Windows.

```sh
brew install --cask vh-technology/tap/bluemacaw
```

The cask installs the signed and notarized universal DMG from the
[latest GitHub release](https://github.com/VH-Technology/bluemacaw/releases/latest).

bluemacaw updates itself in-app, so the cask declares `auto_updates true`.
`brew upgrade` only reinstalls when the app on disk is older than the cask.

To remove the app and its data:

```sh
brew uninstall --cask --zap bluemacaw
```

## Maintenance

The `version` and `sha256` lines in `Casks/bluemacaw.rb` are bumped automatically
by the `publish-homebrew` job in
[bluemacaw's release workflow](https://github.com/VH-Technology/bluemacaw/blob/main/.github/workflows/release.yml)
every time a GitHub release is published. Manual edits are only needed if that job fails.
