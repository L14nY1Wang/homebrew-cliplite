cask "cliplite" do
  arch arm: "arm64"

  version "0.2.1"
  sha256 arm: "91ba5dbdb7e4f4d359cff7abd57ebeb3855dc27b6076e82a10ef931f23b9cb00"

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
