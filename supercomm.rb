# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supercomm < Formula
  desc "SuperComm makes live events less stressful."
  homepage "https://supercomm.rocks"
  version "0.1.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kindlyops/supercomm/releases/download/v0.1.22/supercomm_0.1.22_darwin_arm64.tar.gz"
      sha256 "f62280705108bc7450b4881ea5ecb3563334bfafe12be05b086c0f2e649144bd"

      def install
        bin.install "supercomm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kindlyops/supercomm/releases/download/v0.1.22/supercomm_0.1.22_linux_arm64.tar.gz"
      sha256 "be4acc5ce8f772642c5024e6e3654976440b9cc9dc6ba1a773cc964d1b0d1e9b"

      def install
        bin.install "supercomm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/supercomm/releases/download/v0.1.22/supercomm_0.1.22_linux_amd64.tar.gz"
      sha256 "0d4cb591700c9077b92a9e757c613167b7a74441ed995a33bcade363bb7d3991"

      def install
        bin.install "supercomm"
      end
    end
  end

  def caveats
    <<~EOS
      ███████╗██╗   ██╗██████╗ ███████╗██████╗  ██████╗ ██████╗ ███╗   ███╗███╗   ███╗
      ██╔════╝██║   ██║██╔══██╗██╔════╝██╔══██╗██╔════╝██╔═══██╗████╗ ████║████╗ ████║
      ███████╗██║   ██║██████╔╝█████╗  ██████╔╝██║     ██║   ██║██╔████╔██║██╔████╔██║
      ╚════██║██║   ██║██╔═══╝ ██╔══╝  ██╔══██╗██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║
      ███████║╚██████╔╝██║     ███████╗██║  ██║╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║
      ╚══════╝ ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝
    EOS
  end

  test do
    system "#{bin}/supercomm --help"
  end
end
