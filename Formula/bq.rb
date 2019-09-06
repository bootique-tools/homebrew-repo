class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/bootique/bq/download_file?file_path=bq-0.91.zip"
  sha256 "3cc483c3dc3f6be28b27927c807a532a2c89fc7fb87b2375671126f55414db9b"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end
