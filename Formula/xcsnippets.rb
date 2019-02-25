# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "XCode Snippet Manager"
  homepage "https://github.com/dtaylor1701/XCSnippets"
  url "https://github.com/dtaylor1701/XCSnippets/archive/v1.0.0.tar.gz", version: "v1.0.0"
  sha256 "ea2b9d338c7817a78144dfd57e84a89a365d5d369a5d13c3a871668abdc257d5"
  head "https://github.com/dtaylor1701/XCSnippets.git"
  
  depends_on :xcode => ["10.0", :build]

  def install
      system "make", "install", "prefix=#{prefix}"
  end
  
  test do
      system "false"
  end
end
