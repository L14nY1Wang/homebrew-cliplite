cask "cliplite" do
  arch arm: "arm64"

  version "0.2.0"
  sha256 arm: "6b853ab044a1b47d0859dcb912ab93acd337fc79c4246cf997640e76be9769ac"

  url "https://github.com/L14nY1Wang/ClipLite/releases/download/v#{version}/ClipLite-#{version}.dmg"
  name "ClipLite"
  desc "极低内存的 macOS 截图 / 贴图 / 标注 / OCR 工具"
  homepage "https://github.com/L14nY1Wang/ClipLite"

  depends_on macos: :sonoma

  livecheck do
    url "https://github.com/L14nY1Wang/ClipLite"
    strategy :github_latest
  end

  app "ClipLite.app"

  zap trash: "~/Library/Preferences/com.lianyi.cliplite.plist"
end
