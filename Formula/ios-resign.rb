class IosResign < Formula
  desc "iOS app re-signing command-line tool supporting batch processing"
  homepage "https://github.com/fengyunyongjie/ios-app-signer-cli"

  if Hardware::CPU.arm?
    url "https://github.com/fengyunyongjie/ios-app-signer-cli/releases/download/v1.0.0/ios-resign-arm64-macosx.tar.gz"
    sha256 "258be59a8b4b0f36f214644178f7908a2457aabd0f15a5a9a74b71eac492b8f3"
  else
    url "https://github.com/fengyunyongjie/ios-app-signer-cli/releases/download/v1.0.0/ios-resign-x86_64.tar.gz"
    sha256 "PLACEHOLDER_X86_64"
  end

  version "1.0.0"
  license "MIT"

  def install
    bin.install "ios-resign"
  end

  test do
    system bin/"ios-resign", "--version"
  end
end
