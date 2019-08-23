# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "Xcode Snippet Manager"
  homepage "https://github.com/dtaylor1701/XCSnippets"
  url "https://github.com/dtaylor1701/XCSnippets/archive/v1.1.0.tar.gz", version: "v1.1.0"
  sha256 "ffdad655f83d595b67fa75124f647ad549396080ef95b77117d4363a085fa023"
  head "https://github.com/dtaylor1701/XCSnippets.git"
  
  depends_on :xcode => ["10.2", :build]

  def install
      system "make", "install", "prefix=#{prefix}"
  end
  
  test do
      system "false"
  end
end
