class Prompter < Formula
  desc "CLI tool for assembling AI coding prompts"
  homepage "https://github.com/imdevan/prompter"
  version "1.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/imdevan/prompter/releases/download/v#{version}/prompter-darwin-arm64"
      sha256 "1a3ae2c4120efef51abfb59a8cc3ee24264a2f6c2bc483183a18ea087d512b54"
    else
      url "https://github.com/imdevan/prompter/releases/download/v#{version}/prompter-darwin-amd64"
      sha256 "69032bc3f24aeafb52842c5734c0cff533267e64835af32e5cb7a8e38357dd39"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/imdevan/prompter/releases/download/v#{version}/prompter-linux-arm64"
      sha256 "50aeddf67f6262560b68a162bc2dcffae1b9fd79813855447649cab68c89cedf"
    else
      url "https://github.com/imdevan/prompter/releases/download/v#{version}/prompter-linux-amd64"
      sha256 "dd035e63d55acbb5ff801eab05a3af5b50a13e40bfa9127dbaefb123733c5216"
    end
  end

  def install
    bin.install Dir["prompter-*"].first => "prompter"
  end

  test do
    system "#{bin}/prompter", "--version"
  end
end