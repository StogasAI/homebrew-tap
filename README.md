# Stogas tap

The Homebrew formula and the Scoop manifest for the [Stogas](https://stogas.ai) command line. Each installs a release archive from [StogasAI/stogas](https://github.com/StogasAI/stogas/releases) and checks its SHA-256. The stogas repository's publish workflow writes both from each release after checking its files, so they always name the archives that the release's build proof covers.

## Homebrew, on macOS and Linux

```console
brew install stogasai/tap/stogas
```

## Scoop, on Windows

```console
scoop bucket add stogas https://github.com/StogasAI/homebrew-tap
scoop install stogas/stogas
```

## Previews

Until Stogas's production gateways serve evidence, each release is a preview, such as `0.1.0-alpha.1`: it passed its offline tests on every platform but cannot connect yet. See [Previews](https://github.com/StogasAI/stogas#previews).

## Check an archive yourself

```console
gh attestation verify stogas-v0.1.0-alpha.1-darwin-arm64.tar.gz --repo StogasAI/stogas
```

Report problems in [StogasAI/stogas](https://github.com/StogasAI/stogas/issues).
