# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "XCode Snippet Manager"
  homepage ""
  url "https://github.com/dtaylor1701/XCSnippets/archive/v1.0.tar.gz", version: "v1.0"
  sha256 "aaf67cd5d10bb9767ed312ac59b24c6631a02d7c8c7a63e9765f100e39975b51"
  head "https://github.com/dtaylor1701/XCSnippets.git"
  
  depends_on :xcode => ["10.0", :build]

  def install
      system "make", "install", "prefix=#{prefix}"
  end
  
  test do
      system "false"
  end
end
