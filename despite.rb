


class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.9/despite-darwin-amd64"
  version "v0.0.9"
  sha256 "41c8688d8d8993b9fef680d1d799b6474c286344fdc16ba6e98d0fe11c566922"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.9/despite-linux-amd64"
      sha256 "ee43f28b8750624ae24696ab2cc2fd99c26e091599b6012852caa74a5d6f2268"
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
