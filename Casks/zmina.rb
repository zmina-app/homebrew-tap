cask "zmina" do
  version "1.8.0"

  on_arm do
    sha256 "2ab25f56635e315f3969ce506dde0514870c4487607e50500717a95eced1459e"

    url "https://releases.zmina.app/zmina-#{version}-aarch64.dmg"
  end
  on_intel do
    sha256 "f067fd1eb37f1eb520aec9cefd97cb5e941bf303110e8f04b85030d5cd94f67b"

    url "https://releases.zmina.app/zmina-#{version}.dmg"
  end

  name "Zmina"
  desc "Clipboard that knows where you are pasting"
  homepage "https://zmina.app/"

  livecheck do
    url "https://releases.zmina.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Zmina.app"

  uninstall quit: "app.zmina.desktop"

  zap trash: [
    "~/Library/Application Support/app.zmina.desktop",
    "~/Library/Caches/app.zmina.desktop",
    "~/Library/Logs/app.zmina.desktop",
    "~/Library/WebKit/app.zmina.desktop",
  ]
end
