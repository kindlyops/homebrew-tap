




class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.14/despite-darwin-10.9-amd64"
  version "v0.0.14"
  sha256 "b1a8cc36079269e7474ffb3eb116b0aa77d0dfc8c0db18ff92d30588d34c2a67"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.14/despite-linux-amd64"
      sha256 "8e86c4a856ebeab0e36dab53e94be0e64ae720f56dde5983ea89afe84fa410b0"
    end
  end

  depends_on :arch => :intel

  def install
    if OS.linux?
      bin.install "despite-linux-amd64" => 'despite'
    else
      bin.install "despite-darwin-10.9-amd64" => 'despite'
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
