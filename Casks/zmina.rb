cask "zmina" do
  version "1.9.0"

  on_arm do
    sha256 "8b88dd222b88de725ac45ee019055ca23b756cd56adbd2781ee06c8a24f2d14f"

    url "https://releases.zmina.app/zmina-#{version}-aarch64.dmg"
  end
  on_intel do
    sha256 "ebbf6420625381be27d7b45176fc40be2ae6c6206f176925f9bd01b7a8835398"

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
