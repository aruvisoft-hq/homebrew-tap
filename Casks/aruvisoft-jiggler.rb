cask "aruvisoft-jiggler" do
  version "2.7.0"
  sha256 "ad3603cb66b5acd202bb622f8bf30cee22885bc96ee2063f3cf10732d01b7db6"

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
