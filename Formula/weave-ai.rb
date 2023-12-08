# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class WeaveAi < Formula
  desc "Weave AI CLI"
  homepage "https://weave.works"
  version "0.11.0-rc.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weave-ai/weave-ai/releases/download/v0.11.0-rc.3/weave-ai_0.11.0-rc.3_darwin_arm64.tar.gz"
      sha256 "f984f32b34d57c61c4f46c6cc7a162d2cb1b47f431d8ad3c4d18154f13fdcff2"

      def install
        bin.install "weave-ai"

        generate_completions_from_executable(bin/"weave-ai", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weave-ai/weave-ai/releases/download/v0.11.0-rc.3/weave-ai_0.11.0-rc.3_darwin_amd64.tar.gz"
      sha256 "9725386dc9fadee4a6757808b9deb3dd80551e4122658ce70a29972271e585a6"

      def install
        bin.install "weave-ai"

        generate_completions_from_executable(bin/"weave-ai", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weave-ai/weave-ai/releases/download/v0.11.0-rc.3/weave-ai_0.11.0-rc.3_linux_arm64.tar.gz"
      sha256 "0467caedffa7e0d00c0eb8af10ba316713de3fa49e645b20fbae6b6062f834a1"

      def install
        bin.install "weave-ai"

        generate_completions_from_executable(bin/"weave-ai", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weave-ai/weave-ai/releases/download/v0.11.0-rc.3/weave-ai_0.11.0-rc.3_linux_amd64.tar.gz"
      sha256 "a3113888f35d74ddbd1f841d60c41903503fcda51993dfa12b91f7649cb8b32f"

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
