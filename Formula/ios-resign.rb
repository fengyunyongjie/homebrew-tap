class IosResign < Formula
  desc "iOS app re-signing command-line tool supporting batch processing"
  homepage "https://github.com/fengyunyongjie/ios-app-signer-cli"
  url "https://github.com/fengyunyongjie/ios-app-signer-cli/archive/v1.0.0.tar.gz"
  sha256 "833558b4f39a991a25adb956037b747de870fc2fd9c9d622b976e2f2b47a96c9"
  version "1.0.0"
  license "MIT"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/arm64-apple-macosx/release/ios-resign"
  end

  test do
    system bin/"ios-resign", "--version"
  end
end
