# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class WeaveAi < Formula
  desc "Weave AI CLI"
  homepage "https://weave.works"
  version "0.11.0-rc.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weave-ai/weave-ai/releases/download/v0.11.0-rc.4/weave-ai_0.11.0-rc.4_darwin_arm64.tar.gz"
      sha256 "73fcae41546f416dfaecf9a42c95fa8b0c2c7b9c1bffecc36a827b26b6111373"

      def install
        bin.install "weave-ai"

        generate_completions_from_executable(bin/"weave-ai", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weave-ai/weave-ai/releases/download/v0.11.0-rc.4/weave-ai_0.11.0-rc.4_darwin_amd64.tar.gz"
      sha256 "cf3417787e07e563450adb26ec365b774293361420cc59c6c61e86174cb1e871"

      def install
        bin.install "weave-ai"

        generate_completions_from_executable(bin/"weave-ai", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weave-ai/weave-ai/releases/download/v0.11.0-rc.4/weave-ai_0.11.0-rc.4_linux_arm64.tar.gz"
      sha256 "88abfee1f949a38972601fe19e0bb21aa112bd6a8d99d88beced17480d53386c"

      def install
        bin.install "weave-ai"

        generate_completions_from_executable(bin/"weave-ai", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weave-ai/weave-ai/releases/download/v0.11.0-rc.4/weave-ai_0.11.0-rc.4_linux_amd64.tar.gz"
      sha256 "b8e8f4066255ef4d11384bfb9cb11fc1f923c1efe005843a3bf360d000dd4c5d"

      def install
        bin.install "weave-ai"

        generate_completions_from_executable(bin/"weave-ai", "completion")
      end
    end
  end

  test do
    system "#{bin}/weave-ai --version"
  end
end
