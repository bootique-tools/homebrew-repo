class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://github.com/bootique/bootique-tool/releases/download/v0.101/bq-0.101.macos.zip"
  sha256 "a3e7c0d5d3dbb678701e6bedd94de868ad5f603a0c98bda47fa30487a7744e1a"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end
