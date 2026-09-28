cask "cliplite" do
  arch arm: "arm64"

  version "0.3.0"
  sha256 arm: "c2b7f7f99c28c9f7320a6f4f63ac5fde97a755f0d1228b9eb891bb68abc173a5"

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
