# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "Xcode Snippet Manager"
  homepage "https://github.com/dtaylor1701/XCSnippets"
  url "https://github.com/dtaylor1701/XCSnippets/archive/v1.1.0.tar.gz", version: "v1.1.0"
  sha256 "0ffd6f43e94d732623075c3b6f24813cce72f81a04d23c4f9620534cd820ef53"
  head "https://github.com/dtaylor1701/XCSnippets.git"
  
  depends_on :xcode => ["10.2", :build]

  def install
      system "make", "install", "prefix=#{prefix}"
  end
  
  test do
      system "false"
  end
end
