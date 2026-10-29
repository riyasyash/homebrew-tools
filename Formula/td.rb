class Td < Formula
  desc "Terminal todo app with sub-todos, due dates, and git sync"
  homepage "https://github.com/riyasyash/TerTod"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riyasyash/TerTod/releases/download/v0.0.1/td-0.0.1.tar.gz"
      sha256 "sha256:52061f4a335c5425e7bfdcdc11074e14f12ac1c77c47f429e53911356bab8515"
  end

  def install
    bin.install "td"
  end

end
