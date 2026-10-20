# Zmina Homebrew tap

```bash
brew install --cask zmina-app/tap/zmina
```

Use the full name exactly as shown. Homebrew 6 and later only loads casks
from taps you trust, and installing by the full name trusts this one cask.
Running `brew tap zmina-app/tap` and then `brew install --cask zmina` fails
until you trust it with `brew trust --cask zmina-app/tap/zmina`.

## Already installed Zmina from zmina.app?

```bash
brew install --cask --adopt zmina-app/tap/zmina
```

Homebrew takes over the app you already have instead of replacing it. Your
history and settings stay as they are.

## Updates

Zmina updates itself, so `brew upgrade` leaves it alone by design
(`auto_updates true`). To reinstall from the tap anyway:

```bash
brew upgrade --cask --greedy zmina-app/tap/zmina
```

## Uninstall

```bash
brew uninstall --cask zmina
```

removes the app and keeps your history and settings, so a reinstall picks up
where you left off.

```bash
brew uninstall --cask --zap zmina
```

also deletes your history, settings, caches and logs.
