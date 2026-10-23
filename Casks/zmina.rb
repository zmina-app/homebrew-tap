cask "zmina" do
  version "1.6.3"

  on_arm do
    sha256 "34b50e74739668efbd3ae8adc460ef1249d8b673c99ef5403434208eac39624e"

    url "https://releases.zmina.app/zmina-#{version}-aarch64.dmg"
  end
  on_intel do
    sha256 "f736ee01767db2c4191dd59dcdd6ec31f91dab0221273fb7a19a23cd82f3c4fc"

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
