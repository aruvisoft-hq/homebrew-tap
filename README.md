# Aruvisoft Homebrew Tap

Official Homebrew tap for [Aruvisoft](https://aruvisoft.in/) macOS apps.

## Available casks

| Cask | Description |
|---|---|
| `aruvisoft-jiggler` | Menu-bar app that keeps your Mac awake without fake mouse movement. |

Meridian and future apps will land here as they're released.

## Install

### One-liner (no tap needed up front)

```bash
brew install --cask aruvisoft-hq/tap/aruvisoft-jiggler
```

### Tap first, then install

```bash
brew tap aruvisoft-hq/tap
brew install --cask aruvisoft-jiggler
```

## Upgrade

```bash
brew upgrade --cask aruvisoft-jiggler
```

Or to upgrade every cask from this tap at once:

```bash
brew upgrade --cask $(brew list --cask | grep '^aruvisoft-')
```

## Uninstall

```bash
brew uninstall --cask aruvisoft-jiggler
```

To also remove preferences, caches, and application-support files:

```bash
brew uninstall --cask --zap aruvisoft-jiggler
```

## Contributing

We don't accept community contributions to this tap — it's the
official distribution channel for Aruvisoft apps. For the apps
themselves, see their upstream repos.

## Related links

- Aruvisoft website: https://aruvisoft.in
