class Prompter < Formula
  desc "CLI tool for assembling AI coding prompts"
  homepage "https://github.com/imdevan/prompter"
  url "https://github.com/imdevan/prompter/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "3057f848dfe19c9771aae293818addbd077a7ef38f6ec68692e7cfb98658e9f9"
  version "2.0.1"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/prompter"
  end

  test do
    system "#{bin}/prompter", "--version"
  end
end
