cask "cliplite" do
  arch arm: "arm64"

  version "0.1.0"
  sha256 arm: "9c1d03dad83f7ec7076bccdd2e959bd41ee1d407d9ec6ddfbd6e2b709da538bf"

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
