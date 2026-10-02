# VH-Technology Homebrew tap

Homebrew casks for [VH-Technology](https://github.com/VH-Technology) apps.

## bluemacaw

[bluemacaw](https://bluemacaw.com) is a speech-to-text dictation app for macOS and Windows.

This is a third-party tap. Homebrew does not trust third-party taps by default,
because a tap is code that runs on your machine with your user's privileges.

> [!IMPORTANT]
> **Trust the cask only after you have audited it yourself.** Read
> [`Casks/bluemacaw.rb`](./Casks/bluemacaw.rb) first. If anything looks wrong,
> stop and do not run the trust or install commands.

1. Add the tap. This only downloads it; Homebrew loads nothing from it until you trust it.

   ```sh
   brew tap vh-technology/tap
   ```

2. Audit the cask. Check that the `url` points at a release of
   [VH-Technology/bluemacaw](https://github.com/VH-Technology/bluemacaw/releases),
   that a `sha256` is pinned, and that the file only installs `bluemacaw.app`
   with no extra scripts.

   ```sh
   cat "$(brew --repository vh-technology/tap)/Casks/bluemacaw.rb"
   ```

3. Trust the cask, only once step 2 satisfied you. This trusts the bluemacaw
   cask and nothing else; `brew trust vh-technology/tap` would trust the whole
   tap, including anything added to it later.

   ```sh
   brew trust --cask vh-technology/tap/bluemacaw
   ```

4. Install.

   ```sh
   brew install --cask bluemacaw
   ```

**One-line shortcut.** `brew install --cask vh-technology/tap/bluemacaw` does
steps 1, 3 and 4 at once: installing by the full name makes Homebrew trust the
cask for you. Run it only after auditing the cask above.

To withdraw trust later, run `brew untrust --cask vh-technology/tap/bluemacaw`.

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
