# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vbs < Formula
  desc "vbs helps work with video broadcast files and streams."
  homepage "https://github.com/kindlyops/vbs"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kindlyops/vbs/releases/download/v0.2.3/vbs_0.2.3_darwin_arm64.tar.gz"
      sha256 "b4830d07fcdbd3baa1649d51328365cf334dfde3bf43dc7029e97609ecb133dc"

      def install
        bin.install "vbs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/vbs/releases/download/v0.2.3/vbs_0.2.3_darwin_amd64.tar.gz"
      sha256 "1e6d2d21984634fdd79df3e18bca15a14ce374e5f623bfa46a17f3d688f62a3f"

      def install
        bin.install "vbs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kindlyops/vbs/releases/download/v0.2.3/vbs_0.2.3_linux_arm64.tar.gz"
      sha256 "1168df838b970f7b4c261e999a4dd042c5043b65d52627d204a2a65426f2ef79"

      def install
        bin.install "vbs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/vbs/releases/download/v0.2.3/vbs_0.2.3_linux_amd64.tar.gz"
      sha256 "2c1c4bf06fd1b53999890b30a3269079c4b2a50810a0859083746f6db89a41e3"

      def install
        bin.install "vbs"
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
    system "#{bin}/vbs --version"
  end
end
