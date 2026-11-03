# The publish workflow of https://github.com/StogasAI/stogas writes this file from each release's checked files.
class Stogas < Formula
  desc "Verified local endpoint, sign-up and offline checks for the Stogas AI gateway"
  homepage "https://stogas.ai"
  license "Apache-2.0"

  on_macos do
    depends_on macos: :ventura

    on_arm do
      url "https://github.com/StogasAI/stogas/releases/download/v0.1.0-alpha.1/stogas-v0.1.0-alpha.1-darwin-arm64.tar.gz"
      sha256 "3e3521b2b9aa43e1ad0321792c3c175a7ccdd0fea75f9a0c5661d5fafdb84ea0"
    end
    on_intel do
      url "https://github.com/StogasAI/stogas/releases/download/v0.1.0-alpha.1/stogas-v0.1.0-alpha.1-darwin-amd64.tar.gz"
      sha256 "38cd2ef6453dbb0767749f541ff855e9e38fc74f69d641fce9ef7393e4d54291"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/StogasAI/stogas/releases/download/v0.1.0-alpha.1/stogas-v0.1.0-alpha.1-linux-arm64.tar.gz"
      sha256 "fab2cf2bea5d1f44fe95a59bf7d1b614ba180cbdda7245184c5b8a911b90d643"
    end
    on_intel do
      url "https://github.com/StogasAI/stogas/releases/download/v0.1.0-alpha.1/stogas-v0.1.0-alpha.1-linux-amd64.tar.gz"
      sha256 "556779e9769fbc4a0963360d0852697f8276749aa9d7366cf8b6190ed9a76c7b"
    end
  end

  def install
    bin.install "stogas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stogas --version")
  end
end
