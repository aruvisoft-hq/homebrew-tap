cask "aruvisoft-jiggler" do
  version "2.7.1"
  sha256 "64835aab38975957339a25582d87792142907bc81aa585215047397ba57d19e4"

  url "https://aruvisoft.in/assets/Jiggler-#{version}.dmg"
  name "Jiggler"
  desc "Prevents the system from sleeping without simulated mouse movement"
  homepage "https://aruvisoft.in/#jiggler"

  livecheck do
    url :homepage
    regex(/Jiggler[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :ventura"

  app "Jiggler.app"

  zap trash: [
    "~/Library/Application Support/Jiggler",
    "~/Library/Caches/com.jiggler.app",
    "~/Library/HTTPStorages/com.jiggler.app",
    "~/Library/Preferences/com.jiggler.app.plist",
    "~/Library/Saved Application State/com.jiggler.app.savedState",
  ]
end
