class Luckypg < Formula
  desc "Lucky Programmer 给程序员带来好运的小工具"
  homepage "https://github.com/leizongmin/luckypg"
  version "1.1.0"
  license "MIT"

  if OS.mac?
    url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-macos"
    sha256 "d913eeda19be4de6e892748b1eaad7445795d65e5d00c05413499b5fa2683cdc"
  elsif OS.linux?
    url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-linux"
    sha256 "0cab71140fce37149a5942eb4d78d9909355cf1c4c0e6b9f263ff456e1308678"
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
