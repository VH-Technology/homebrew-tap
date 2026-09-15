cask "bluemacaw" do
  version "1.0.6"
  sha256 "42c076e45df67c746cf82a1f11e5b9e909d0d8da13c9ef3b81d130bbd94faa9a"

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
