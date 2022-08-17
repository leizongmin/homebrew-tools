class Luckypg < Formula
  desc "Lucky Programmer 给程序员带来好运的小工具"
  homepage "https://github.com/leizongmin/luckypg"
  version "1.0.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-macos"
    sha256 "50ab795bd721c1bf2912d19fc2a1407a61ba90268bd7d1b6cf8c1276a41d05fb"
  elsif OS.linux?
    url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-linux"
    sha256 "e3d70dbe782d2d39b986c3b7c9a8aadcaa3b139d20911716ccc1d2f58afde4ab"
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
