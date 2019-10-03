# This file was generated by GoReleaser. DO NOT EDIT.
class Deleterious < Formula
  desc "Deleterious helps find orphaned resources from AWS CloudFormation DeletionPolicy: Retain"
  homepage "https://github.com/kindlyops/deleterious"
  version "0.1.24"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kindlyops/deleterious/releases/download/v0.1.24/deleterious_0.1.24_darwin_amd64.tar.gz"
    sha256 "fdd38f4f78391a42d9313df2ca477501cbef456b760040a1c82eaabc0ffa16c8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.24/deleterious_0.1.24_linux_amd64.tar.gz"
      sha256 "cce91ec8196f732c33a6de7a9f608090cde2a3f51f618f0085ed57a8583d58e6"
    end
  end

  def install
    bin.install "deleterious"
  end

  def caveats; <<~EOS
    Brought to you by
    
    _  ___           _ _        ___
    | |/ (_)_ __   __| | |_   _ / _ \\ _ __  ___
    | ' /| | '_ \\ / _` | | | | | | | | '_ \\/ __|
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
