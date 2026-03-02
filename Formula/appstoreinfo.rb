require "formula"

class Appstoreinfo < Formula
  desc "A command-line tool to retrieve iOS app bundle identifier from App Store"
  homepage "https://github.com/fengyunyongjie/AppStoreInfo"
  url "https://github.com/fengyunyongjie/AppStoreInfo/archive/v1.0.0.tar.gz"
  sha256 "1612a318f5de0e976d666dc9bbc419521ae6b3e086ac7db985c2e2ab61425a43"
  license "MIT"

  def install
    system "swiftc", "-o", "appstoreinfo", "AppStoreInfo.swift"
    bin.install "appstoreinfo"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/appstoreinfo 12345 2>&1", 0)
  end
end