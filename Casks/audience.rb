cask "audience" do
  version "1.3.0"
  sha256 "bc037d3335c2c9c2d91850b1a1eebc554323a8228e4ed8d6278bf072d591ab70"

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
