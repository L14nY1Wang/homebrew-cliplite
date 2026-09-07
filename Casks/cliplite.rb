cask "cliplite" do
  arch arm: "arm64"

  version "0.1.1"
  sha256 arm: "61294d13eeec681e4e5b210c9896a1cb2ac8517c004cb0bd97ba72a12f57d682"

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
