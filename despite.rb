




class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.13/despite-darwin-10.9-amd64"
  version "v0.0.13"
  sha256 "d8722dfaa9e0bd5df89be7aa25c64d0495fef24d0f74a35b77c183568481d2de"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.13/despite-linux-amd64"
      sha256 "e2518b7cc0b8e5fdd252f1af916590248f5123963925a2934433d76db579e4f0"
    end
  end

  depends_on :arch => :intel

  def install
    if OS.linux?
      bin.install despite-linux-amd64 => 'despite'
    else
      bin.install despite-darwin-10.9-amd64 => 'despite'
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
