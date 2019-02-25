# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "XCode Snippet Manager"
  homepage "https://github.com/dtaylor1701/XCSnippets"
  url "https://github.com/dtaylor1701/XCSnippets/archive/v1.0.0.tar.gz", version: "v1.0.0"
  sha256 "62665207ddf01d151e40fa80f94e424fcd112914b9eb1b99b129d0e2cdd18cf0"
  head "https://github.com/dtaylor1701/XCSnippets.git"
  
  depends_on :xcode => ["10.0", :build]

  def install
      system "mkdir", "#{prefix}/bin"
      system "make", "install", "prefix=#{prefix}"
  end
  
  test do
      system "false"
  end
end
