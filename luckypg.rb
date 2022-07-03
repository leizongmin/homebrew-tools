class Luckypg < Formula
  desc "Lucky Programmer 给程序员带来好运的小工具"
  homepage "https://github.com/leizongmin/luckypg"
  version "1.0.2"
  license "MIT"

  if OS.mac?
    url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-macos"
    sha256 "cb5f7815b562285d9e741a7e69df90f8a723ce1147b9f203a813d8473323da29"
  elsif OS.linux?
    url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-linux"
    sha256 "a195ff76a927c0cf391d36677ef1dbb648404c9d8bac8ff9e2579ec73ee185c8"
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
