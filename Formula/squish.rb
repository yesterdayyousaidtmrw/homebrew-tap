class Squish < Formula
  desc "Free disk space by compressing the apps and files you aren't using"
  homepage "https://github.com/yesterdayyousaidtmrw/squish"
  url "https://github.com/yesterdayyousaidtmrw/squish/releases/download/v0.1.0/squish-v0.1.0-macos.tar.gz"
  sha256 "fa964ec3ce0bf927a6f6e595f52b8c636af31fce77c38b22fed4d1365e989124"

  # The release's universal binary, laid out as a keg. Installing a bottle needs
  # no compiler, so users with missing or outdated Command Line Tools can install.
  bottle do
    root_url "https://github.com/yesterdayyousaidtmrw/squish/releases/download/v0.1.0"
    sha256 cellar: :any_skip_relocation, all: "e3685d6732fd1579f663c63c0e42cb274a317d4a4f92ae0e9144cf7380fd920a"
  end

  depends_on "afsctool"
  depends_on :macos

  def install
    bin.install "squish"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/squish version").strip
  end
end
