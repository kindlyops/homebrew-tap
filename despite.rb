




class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.15/despite_darwin_amd64"
  version "v0.0.15"
  sha256 "ae2c90a8eec004d56b51e6822edc1ee5aeea72cbb5b474a1a1de6cb7548a5b77"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.15/despite_linux_amd64"
      sha256 "7e05fa864e6ce1d5d2a6d2e8242241cb1e1f1d7772d3017cbd495d0f45208205"
    end
  end

  depends_on :arch => :intel

  def install
    if OS.linux?
      bin.install "despite_linux_amd64" => 'despite'
    else
      bin.install "despite_darwin_amd64" => 'despite'
    end
  end

  def caveats
    msg = <<-'EOM'
Brought to you by

 _  ___           _ _        ___
 | |/ (_)_ __   __| | |_   _ / _ \ _ __  ___
 | ' /| | '_ \ / _` | | | | | | | | '_ \/ __|
 | . \| | | | | (_| | | |_| | |_| | |_) \__ \
 |_|\_\_|_| |_|\__,_|_|\__, |\___/| .__/|___/
                         |___/      |_|
use at your own risk.
EOM
  end

end
