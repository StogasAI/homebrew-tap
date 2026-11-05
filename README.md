# Stogas tap

Homebrew formula and Scoop manifest for the [Stogas](https://stogas.ai) command line. Each installs a release archive from [StogasAI/stogas](https://github.com/StogasAI/stogas/releases) and checks its SHA-256.

## Homebrew, on macOS and Linux

```console
brew install stogasai/tap/stogas
```

## Scoop, on Windows

```console
scoop bucket add stogas https://github.com/StogasAI/homebrew-tap
scoop install stogas/stogas
```

## Check an archive yourself

```console
gh attestation verify <archive> --repo StogasAI/stogas
```

Report problems in [StogasAI/stogas](https://github.com/StogasAI/stogas/issues).
