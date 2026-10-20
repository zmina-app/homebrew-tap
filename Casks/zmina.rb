cask "zmina" do
  version "1.6.1"

  on_arm do
    sha256 "abf0479adaec69bbdcf2ceb9e9cdbb7ec32b8ecbab2dcaaec1506d42a160f488"

    url "https://releases.zmina.app/zmina-#{version}-aarch64.dmg"
  end
  on_intel do
    sha256 "0971a8a6df24212fcebc946b690e3130a0c8996ba821771c1a77153c94aece32"

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
