




class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.16/despite_darwin_amd64"
  version "v0.0.16"
  sha256 "c5f442c154e5854a8cc0df5f202cb1064f55ac1f455732ea1a6241c904af141b"

  if OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.16/despite_linux_amd64"
      sha256 "c2da3f29caa1c5ba5965565f2eab780f0b7d75921fa0f3f4098d2cbd1b6ad832"
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
