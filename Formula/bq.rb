class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://github.com/bootique/bootique-tool/releases/download/v0.100/bq-0.100.macos.zip"
  sha256 "74f9be5459b0a1a1dffa5f30dbd424dd9ee8a6b8518d8483f532f26cecc2e86c"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end
