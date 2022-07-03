# homebrew-tools

Personal Homebrew tap

## 安装 luckypg

```bash
brew tap leizongmin/tools
brew install luckypg
```

## 开发

要更新版本，修改 `luckypg.rb` 文件：

```diff
 class Luckypg < Formula
   desc "Lucky Programmer 给程序员带来好运的小工具"
   homepage "https://github.com/leizongmin/luckypg"
-  version "1.0.1"
+  version "新的版本号"
   license "MIT"

   if OS.mac?
     url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-macos"
-    sha256 "ae095f462051158db9dff03b49be3b9031f021a6a2d78072dbb31023efbb0c35"
+    sha256 "新的sha256值"
   elsif OS.linux?
     url "https://github.com/leizongmin/luckypg/releases/download/v#{version}/luckypg-linux"
-    sha256 "70395b42d0f1bac99fbe0155bea26c2febffb9b0df25866e6a78ea8db30bda30"
+    sha256 "新的sha256值"
   end
```

通过命令 `shasum -a 256 $FILE` 计算文件的 sha256 值。

执行以下命令测试 `luckypg.rb` 安装脚本：

```bash
brew install --verbose --debug --build-from-source luckypg.rb
```

参考文档：

- https://docs.brew.sh/Formula-Cookbook
- https://rubydoc.brew.sh/Formula
