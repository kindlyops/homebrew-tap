# This file was generated by GoReleaser. DO NOT EDIT.
class Deleterious < Formula
  desc "Deleterious helps find orphaned resources from AWS CloudFormation DeletionPolicy: Retain"
  homepage "https://github.com/kindlyops/deleterious"
  version "0.1.26"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kindlyops/deleterious/releases/download/v0.1.26/deleterious_0.1.26_darwin_amd64.tar.gz"
    sha256 "8c426c6e9f2afae1a2fd4b5b9eddb8ae4d780d59d77588dd8bd771fa958d8572"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kindlyops/deleterious/releases/download/v0.1.26/deleterious_0.1.26_linux_amd64.tar.gz"
      sha256 "fb5d2264b6681986c4d646f55367d23c1a3c1b61dfd6dc79779d99fe39366e64"
    end
  end

  def install
    bin.install "deleterious"
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
