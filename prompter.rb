class Prompter < Formula
  desc "CLI tool for assembling AI coding prompts"
  homepage "https://github.com/imdevan/prompter"
  version "2.0.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/imdevan/prompter/releases/download/v2.0.1/prompter-darwin-arm64"
      sha256 "afba36bc98cebe7fd93c6c454a480170df39b0c530c0197e48f0858b48e85991"
    else
      url "https://github.com/imdevan/prompter/releases/download/v2.0.1/prompter-darwin-amd64"
      sha256 "ee75f743ab85b331b9bba9590b71f0067684285f78b16120f63c9450ed1b2ad0"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/imdevan/prompter/releases/download/v2.0.1/prompter-linux-arm64"
      sha256 "acf89b8dfa642e7270404219a10bc9ca3f1e9ee0d9c789a5bc76c30ac8f8291b"
    else
      url "https://github.com/imdevan/prompter/releases/download/v2.0.1/prompter-linux-amd64"
      sha256 "344b549cda5df3a23516e2a755f11cd0bbfaa9204190a507677f497ad81f57d8"
    end
  end

  def install
    bin.install Dir["prompter-*"].first => "prompter"
  end

  test do
    system "\#{bin}/prompter", "--version"
  end
end
