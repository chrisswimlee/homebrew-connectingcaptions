# Connecting Captions Pro Homebrew tap

```bash
brew tap chrisswimlee/connectingcaptions
brew trust chrisswimlee/connectingcaptions
brew install --cask connectingcaptions
```

The cask installs the notarized GitHub Release zip. Release 1.6.16 still has Connecting Captions.app inside. The next zip uses Connecting Captions Pro.app, and the cask name and app line change with that zip. It does not install the App Store app, FluidVoice, or fluidSubtitles.

After a new `v*` release, from this checkout:

```bash
./update-cask.sh 1.6.15 /path/to/SHA256SUMS
```
