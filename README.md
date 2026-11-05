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

The release workflow built an archive from its tag when this passes:

```console
gh attestation verify <archive> --repo StogasAI/stogas \
  --signer-workflow StogasAI/stogas/.github/workflows/release.yml \
  --source-ref refs/tags/v<version> --deny-self-hosted-runners
```

Report problems in [StogasAI/stogas](https://github.com/StogasAI/stogas/issues).
