


class Despite < Formula
  desc "Swiss army knife for the harried operator https://www.kindlyops.com"
  homepage "https://github.com/kindlyops/despite"
  url "https://github.com/kindlyops/despite/releases/download/v0.0.10/despite-darwin-amd64"
  version "v0.0.10"
  sha256 "9acc5985a0c9a28362582e36787eefa696234c366a1fd026d2cc2f26990c7479"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/kindlyops/despite/releases/download/v0.0.10/despite-linux-amd64"
      sha256 "c2274fe61d908c9b30d39600c843eee5ba5888d4cc535278fe14fd638ecdcba2"
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
