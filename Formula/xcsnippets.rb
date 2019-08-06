# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "Xcode Snippet Manager"
  homepage "https://github.com/dtaylor1701/XCSnippets"
  url "https://github.com/dtaylor1701/XCSnippets/archive/v1.0.2.tar.gz", version: "v1.0.2"
  sha256 "b423b3991376365c94fd845d8d715377ea6cbedcf9c467930deda503bb6d6365"
  head "https://github.com/dtaylor1701/XCSnippets.git"
  
  depends_on :xcode => ["10.2", :build]

  def install
      system "make", "install", "prefix=#{prefix}"
  end
  
  test do
      system "false"
  end
end
