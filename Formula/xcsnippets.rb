# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "XCode Snippet Manager"
  homepage "https://github.com/dtaylor1701/XCSnippets"
  url "https://github.com/dtaylor1701/XCSnippets/archive/v1.0.0.tar.gz", version: "v1.0.0"
  sha256 "e6b1994468667b491c99bb867f35e9fd0a42dda2159d9c333b2c47d314eb1c53"
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
