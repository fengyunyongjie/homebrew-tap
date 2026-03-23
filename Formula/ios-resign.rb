class IosResign < Formula
  desc "iOS app re-signing command-line tool supporting batch processing"
  homepage "https://github.com/fengyunyongjie/ios-app-signer-cli"
  url "https://github.com/fengyunyongjie/ios-app-signer-cli.git",
    branch: "main",
    revision: "main"
  version "1.0.0"

  depends_on macos: :catalina

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/arm64-apple-macosx/release/ios-resign"
  end

  test do
    system bin/"ios-resign", "--version"
  end
end
