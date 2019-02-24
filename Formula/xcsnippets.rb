# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "XCode Snippet Manager"
  homepage ""
  url "https://github.com/dtaylor1701/XCSnippets", :tag => "v1.0"
  head "https://github.com/dtaylor1701/XCSnippets.git"
  
  depends_on :xcode => ["10.0", :build]

  def install
      # ENV.deparallelize
      system "./configure", "--disable-debug",
      "--disable-dependency-tracking",
      "--disable-silent-rules",
      "--prefix=#{prefix}"
      # system "cmake", ".", *std_cmake_args
      system "make", "install"
  end
  
  test do
  system "false"
end
end
