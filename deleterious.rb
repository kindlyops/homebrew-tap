# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deleterious < Formula
  desc "Deleterious helps find orphaned resources from AWS CloudFormation DeletionPolicy: Retain"
  homepage "https://github.com/kindlyops/deleterious"
  version "0.1.44"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.44/deleterious_0.1.44_darwin_amd64.tar.gz"
      sha256 "9eae9b3635ab80f061924f750278f85a9ec96070cfe3022e11cca86a5eeff2e2"

      def install
        bin.install "deleterious"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.44/deleterious_0.1.44_darwin_arm64.tar.gz"
      sha256 "9eae9b3635ab80f061924f750278f85a9ec96070cfe3022e11cca86a5eeff2e2"

      def install
        bin.install "deleterious"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.44/deleterious_0.1.44_linux_amd64.tar.gz"
      sha256 "2f201367ef27bbb167f6e7df7d577d06707c3a1924aa29a9de68f03ebf25effa"

      def install
        bin.install "deleterious"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.44/deleterious_0.1.44_linux_arm64.tar.gz"
      sha256 "17b3b9adc468692dd4a3fa0269d854d1b20f21e591de60a5e00263cd016b3d39"

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
