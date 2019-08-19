# This file was generated by GoReleaser. DO NOT EDIT.
class Deleterious < Formula
  desc "Deleterious helps find orphaned resources from AWS CloudFormation DeletionPolicy: Retain"
  homepage "https://github.com/kindlyops/deleterious"
  version "0.1.11"

  if OS.mac?
    url "https://github.com/kindlyops/deleterious/releases/download/v0.1.11/deleterious_0.1.11_darwin_amd64.tar.gz"
    sha256 "e18fcc6cbf1f36af37b4b73e23d507e2e2f427b5ad180dabe1fe810589b6aa69"
  elsif OS.linux?
    url "https://github.com/kindlyops/deleterious/releases/download/v0.1.11/deleterious_0.1.11_linux_amd64.tar.gz"
    sha256 "1818f3c632752b88af5a7ab140dc05e828c98714a07d23849962d126be18cc8a"
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
