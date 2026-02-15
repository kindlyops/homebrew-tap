cask "audience" do
  version "1.2.0"
  sha256 "5083a60cedc9f39a93a00270d1f2a070bcbe818c90aadd98f2d86b4a0cef25bb"

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
