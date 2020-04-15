class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/bootique/bq/download_file?file_path=bq-0.96.zip"
  sha256 "5e562a16a5a4cef2681b7f530594a0bf7c07fd084e630390df873faa9dc9f833"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end
