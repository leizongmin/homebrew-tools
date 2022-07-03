class Luckypg < Formula
  desc "Lucky Programmer 给程序员带来好运的小工具"
  homepage "https://github.com/leizongmin/luckypg"
  version "1.0.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-macos"
    sha256 "ae095f462051158db9dff03b49be3b9031f021a6a2d78072dbb31023efbb0c35"
  elsif OS.linux?
    url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-linux"
    sha256 "70395b42d0f1bac99fbe0155bea26c2febffb9b0df25866e6a78ea8db30bda30"
  end

  def install
    # system "pwd"
    # system "ls -ahlR"
    if OS.mac?
      system "mv", "luckypg-macos", "luckypg"
    elsif OS.linux?
      system "mv", "luckypg-linux", "luckypg"
    end
    bin.install "luckypg"
  end

  def caveats
    <<~EOS
      请将 luckypg 放置在 $HOME/.profile 中，以便每次运行 shell 时会运行它。
      例如：
        echo luckypg >> $HOME/.profile
    EOS
  end

  test do
    system "#{bin}/luckypg"
  end
end
