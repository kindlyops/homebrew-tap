cask "audience" do
  version "1.2.2"
  sha256 "d9c8ae796d37fac181c3a3d94ef1ba0807ea41b928347a6abf740202f3e54685"

  url "https://github.com/statik/audience/releases/download/v#{version}/Audience_#{version}_universal.dmg"
  name "Audience"
  desc "PTZ camera controller with live video feed and preset management"
  homepage "https://github.com/statik/audience"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Audience.app"
end
