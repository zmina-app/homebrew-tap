cask "zmina" do
  version "1.10.0"

  on_arm do
    sha256 "86f3be2d98f52c502870682709f2fd261e431a84e49aa60e8b3af5a36d42140b"

    url "https://releases.zmina.app/zmina-#{version}-aarch64.dmg"
  end
  on_intel do
    sha256 "169c4fe5ce71614f4b7a95186e061cd73e52c9fb22e8eb44ec6c4a900d058533"

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
