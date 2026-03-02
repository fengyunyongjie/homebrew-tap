require "formula"

class Appstoreinfo < Formula
  desc "A command-line tool to retrieve iOS app bundle identifier from App Store"
  homepage "https://github.com/fengyunyongjie/AppStoreInfo"
  url "https://github.com/fengyunyongjie/AppStoreInfo/archive/v1.0.0.tar.gz"
  sha256 "30688f2152e5edf3a3ce6f121a4a1c742c868b344dadfb3832516fe6495cb68d"
  license "MIT"

  depends_on :xcode => ["12.0", :build]

  def install
    system "swiftc", "-o", "appstoreinfo", "AppStoreInfo.swift"
    bin.install "appstoreinfo"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/appstoreinfo 12345 2>&1", 0)
  end
end