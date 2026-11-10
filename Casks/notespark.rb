cask "notespark" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "1cd9ea38e7043cbaf4e1b8e9c50b1f1031eb08c1b9b1eb69201c6013869c4e65",
         intel: "3fe562d2739526ed583cd49e27d1e099ca55bf911a2731eb997f4f6aa920e793"

  url "https://github.com/Lusan-sapkota/NoteSpark/releases/download/v#{version}/NoteSpark-macos-#{arch}.dmg"
  name "NoteSpark"
  desc "Fast, offline-first notes"
  homepage "http://notespark.lusansapkota.com.np/"

  app "NoteSpark.app"

  # The app is not signed or notarized by Apple (ad-hoc signature only): without this macOS blocks the first start.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/NoteSpark.app"]
  end
end
