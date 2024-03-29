# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Streamer < Formula
  desc "🚣 streamer is utilities for working with kinesis"
  homepage "https://github.com/kindlyops/streamer"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kindlyops/streamer/releases/download/v0.1.4/streamer_0.1.4_darwin_arm64.tar.gz"
      sha256 "a6739010e389337f4a27a7d0cab21f542604a45586c0c3aafdbc33bbf604a516"

      def install
        bin.install "streamer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/streamer/releases/download/v0.1.4/streamer_0.1.4_darwin_amd64.tar.gz"
      sha256 "d0b6f8538cdf0617caf36afcd712348ab6ad4ef4c5b4306fb03fb5b97192d540"

      def install
        bin.install "streamer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/streamer/releases/download/v0.1.4/streamer_0.1.4_linux_amd64.tar.gz"
      sha256 "143da60e34deb04605dd993973646e8d12d045b9fcd274f0c5bce2b8ec6996ff"

      def install
        bin.install "streamer"
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
    system "#{bin}/streamer --version"
  end
end
