# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vbs < Formula
  desc "vbs helps work with video broadcast files and streams."
  homepage "https://github.com/kindlyops/vbs"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/vbs/releases/download/v0.2.4/vbs_0.2.4_darwin_amd64.tar.gz"
      sha256 "8bdd0a11d1c25048d4ec135cd24b1aff63da125a409192c920ca420914cc6803"

      def install
        bin.install "vbs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kindlyops/vbs/releases/download/v0.2.4/vbs_0.2.4_darwin_arm64.tar.gz"
      sha256 "49a5111a63add67ecda991de000b00c896f102e8c2e76bab183a34be71a2997e"

      def install
        bin.install "vbs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kindlyops/vbs/releases/download/v0.2.4/vbs_0.2.4_linux_arm64.tar.gz"
      sha256 "4fa82788bdb3bf27d7bfac679790c68ee50e4b0c51715cb8abd92ec6f7b46e22"

      def install
        bin.install "vbs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/vbs/releases/download/v0.2.4/vbs_0.2.4_linux_amd64.tar.gz"
      sha256 "d344a8a968be656fa722f1ecdd0bbb68e10477394ff532c55cce41b397a05d36"

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
