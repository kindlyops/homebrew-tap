cask "audience" do
  version "1.1.0"
  sha256 "7e9155b7a2d1eb1ca61735d8a6b6f72ccb130991c75077a453c18a492be6a341"

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
