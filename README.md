# Homebrew Tap

Fengyunyongjie's personal Homebrew tap for installing various command-line tools.

## Installation

```bash
brew tap fengyunyongjie/tap
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `appstoreinfo` | Retrieve iOS app bundle identifier from App Store |
| `ios-resign` | iOS app re-signing tool with batch processing support |

## Usage

Install a formula:
```bash
brew install <formula-name>
```

Examples:
```bash
# Install ios-resign
brew install ios-resign

# Install appstoreinfo
brew install appstoreinfo
```

## ios-resign Usage

```bash
# List available certificates
ios-resign list-certs

# Sign a single IPA file
ios-resign sign MyApp.ipa -c "Apple Development: Your Name"

# Batch process entire directory
ios-resign batch-sign /path/to/ipa/files \
  -o /path/to/output \
  -c "Apple Development: Your Name"
```

For more information, visit: [ios-resign GitHub](https://github.com/fengyunyongjie/ios-app-signer-cli)

## Updating

```bash
# Update all formulae from this tap
brew upgrade

# Update a specific formula
brew upgrade ios-resign
```

## Uninstalling

```bash
# Uninstall a formula
brew uninstall ios-resign

# Remove the tap
brew untap fengyunyongjie/tap
```
