# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deleterious < Formula
  desc "Deleterious helps find orphaned resources from AWS CloudFormation DeletionPolicy: Retain"
  homepage "https://github.com/kindlyops/deleterious"
  version "0.1.48"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.48/deleterious_0.1.48_darwin_arm64.tar.gz"
      sha256 "f7b71f864707f245751317d33d7425229336a1539682cbb3241acadf4d70319b"

      def install
        bin.install "deleterious"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.48/deleterious_0.1.48_darwin_amd64.tar.gz"
      sha256 "f7b71f864707f245751317d33d7425229336a1539682cbb3241acadf4d70319b"

      def install
        bin.install "deleterious"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.48/deleterious_0.1.48_linux_amd64.tar.gz"
      sha256 "af49e6e7fd32fa6bd4f575a43b88e4f4efa4e98a8ee59ba7bd22cd8bc3c656b9"

      def install
        bin.install "deleterious"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.48/deleterious_0.1.48_linux_arm64.tar.gz"
      sha256 "1cdd3d6a3311bd10310738161ff3b4947b12fecda0276a37ff864b9dc2801343"

      def install
        bin.install "deleterious"
      end
    end
  end

  def caveats; <<~EOS
    Brought to you by

    _  ___           _ _        ___
    | |/ (_)_ __   __| | |_   _ / _ \\ _ __  ___
    | ' /| | '_ \\ / _| | | | | | | | | '_ \\/ __|
    | . \\| | | | | (_| | | |_| | |_| | |_) \__ \\
    |_|\\_\\_|_| |_|\\__,_|_|\\__, |\\___/| .__/|___/
                          |___/      |_|
    use at your own risk.
  EOS
  end

  test do
    system "#{bin}/deleterious --version"
  end
end
