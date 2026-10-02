cask "bluemacaw" do
  version "1.2.0"
  sha256 "eaaaae69a762b0dfb941255aa8e0754b56d2f649ecac8e01d15cc500d92c4219"

  url "https://github.com/VH-Technology/bluemacaw/releases/download/v#{version}/bluemacaw_#{version}_universal.dmg"
  name "bluemacaw"
  desc "Speech-to-text dictation with bring-your-own-key STT providers"
  homepage "https://www.bluemacaw.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "bluemacaw.app"

  uninstall quit: "com.vhtechnology.bluemacaw"

  zap trash: [
    "~/Library/Application Support/com.vhtechnology.bluemacaw",
    "~/Library/Caches/com.vhtechnology.bluemacaw",
    "~/Library/Preferences/com.vhtechnology.bluemacaw.plist",
    "~/Library/Saved Application State/com.vhtechnology.bluemacaw.savedState",
    "~/Library/WebKit/com.vhtechnology.bluemacaw",
  ]
end
