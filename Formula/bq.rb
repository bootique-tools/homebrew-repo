class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://github.com/bootique/bootique-tool/releases/download/v0.100/bq-0.100.macos.zip"
  sha256 "e7917f05abf9155edd0b2353230c764d8fc9b752900666091554e9de1582fe13"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end
