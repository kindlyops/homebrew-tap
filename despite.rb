class Despite < Formula
  desc ""
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.1/despite-darwin-amd64"
  version "v0.0.1"
  sha256 "d1c0b90735b036aaeb1c4999cfdf3634740d18c8f23b5a32ad9d6f9be408fbb3"

  if OS.linux?
    if Hardware.is_64_bit?
      url ""
      sha256 ""
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
