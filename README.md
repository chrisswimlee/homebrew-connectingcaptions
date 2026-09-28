# Connecting Captions Homebrew tap

```bash
brew tap chrisswimlee/connectingcaptions
brew trust chrisswimlee/connectingcaptions
brew install --cask connectingcaptions
```

The cask installs the notarized GitHub Release zip. It does not install FluidVoice or fluidSubtitles.

After a new `v*` release, from this checkout:

```bash
./update-cask.sh 1.6.13 /path/to/SHA256SUMS
```
