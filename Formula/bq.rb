class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://github.com/bootique/bootique-tool/releases/download/v0.100/bq-0.100.macos.zip"
  sha256 "f07040237afeb89af73b2c36d7f6fd3263ef7380a32a9898586f2bbbbb721a01"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end
