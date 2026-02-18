class Prompter < Formula
  desc "CLI tool for assembling AI coding prompts"
  homepage "https://github.com/imdevan/prompter"
  version "2.0.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/imdevan/prompter/releases/download/v2.0.1/prompter-darwin-arm64"
      sha256 "0213df04cef09b8d32dfc9be2d960105ae0b0e1c498e9d753322ffb9d5beceec"
    else
      url "https://github.com/imdevan/prompter/releases/download/v2.0.1/prompter-darwin-amd64"
      sha256 "21998b173024f7fa07b9f49790de01f8a442bd928c4554d376ea98a97aa9881c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/imdevan/prompter/releases/download/v2.0.1/prompter-linux-arm64"
      sha256 "2a09b673d8cd73549e3be37e32a810586e83b331c14588df5926a390e802a1dc"
    else
      url "https://github.com/imdevan/prompter/releases/download/v2.0.1/prompter-linux-amd64"
      sha256 "df80ea3d782f63c8d971c5e486408cab7a09c46f269ae2ae87eedeaeb42b1837"
    end
  end

  def install
    bin.install Dir["prompter-*"].first => "prompter"
  end

  test do
    system "\#{bin}/prompter", "--version"
  end
end
