class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/bootique/bq/download_file?file_path=bq-0.98.zip"
  sha256 "4c5fccc3f5c6cd3ce87f80ad86e2fc07443f569a727e8705a0adee6f0ba9c0e5"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end
