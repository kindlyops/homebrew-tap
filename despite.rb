




class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.12/#{darwin_name}"
  version "v0.0.12"
  sha256 "9030283d09fa8f20261b652125c6f244c30aeaf09be9f9052a3a45174014df6a"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.12/#{linux_name}"
      sha256 "22970063f4bc2ebe9bbb67b0e148fea0d287efe994b42f23b2cb8b74f4e1f3c9"
    end
  end

  depends_on :arch => :intel

  def install
    if OS.linux?
      bin.install linux_name => 'despite'
    else
      bin.install darwin_name => 'despite'
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
