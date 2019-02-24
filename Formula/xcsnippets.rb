# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Xcsnippets < Formula
  desc "XCode Snippet Manager"
  homepage ""
  url "https://github.com/dtaylor1701/XCSnippets", :tag => "v1.0", :revision => "e59f74edc9559ddf4e3268670554034e99806b9f"
  head "https://github.com/dtaylor1701/XCSnippets.git"
  sha256 "9574d9e5a700aca67752ef31c9405276aa9c27f83d7970ac68ef7cdc333a3a56"
  
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
