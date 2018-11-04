class Shlide < Formula
  desc "Slide show tool for CLI"
  homepage "https://github.com/Cj-bc/shlide"
  url "https://github.com/Cj-bc/shlide/archive/v#{version}.tar.gz"
  version "0.1.0"
  sha256 ""

  def install
    system 'vim +\'%s#\$( cd "\${BASH_SOURCE\[0\]%\/\*}" && pwd )#' + prefix + '#g\' +w! +q shlide.oo.sh'
    system "shlide.oo.sh" "shlide"
    bin.install "shlide"
    prefix.install Dir["lib"], Dir["tests"]
  end

  test do
    system "bats", Dir.glob("#{prefix}/tests/*")
  end
end
