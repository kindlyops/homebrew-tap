


class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.7/despite-darwin-amd64"
  version "v0.0.7"
  sha256 "d4f8750cd62d86c549a08bfb3a2d1d360e4afa539acb4138ae42d8209521ee23
"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.7/despite-linux-amd64"
      sha256 "ca4cc476d5d8a7ce8bb1f92a071d4d78c804ae36b56f01658000f516bfda4c88
"
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
