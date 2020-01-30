class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://bintray.com/bootique/bq/download_file?file_path=bq-0.95.zip"
  sha256 "175c8f0119387adefde5835839d302ab89cf52fb014fa9acd131a0839fe16ce3"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end
