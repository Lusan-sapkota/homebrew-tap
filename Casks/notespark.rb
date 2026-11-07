cask "notespark" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "748bd3d8bb3b193c98f629e0a6eb6dde7549e6459c7dbe44f47f816e3008615f",
         intel: "f9ed51b77c3827096dea43c43b05cb0690ec56e67f3198b59755b2181622cf9a"

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
