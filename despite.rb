


class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.11/despite-darwin-amd64"
  version "v0.0.11"
  sha256 ""

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.11/despite-linux-amd64"
      sha256 "04d5ecdf1548e2589b327cbfe8f81227be430d13f131cb6ddec1027d7cee767a"
    end
  end

  depends_on :arch => :intel

  def install
    if OS.linux?
      bin.install 'despite-linux-amd64' => 'despite'
    else
      bin.install 'despite-darwin-amd64' => 'despite'
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
