class Td < Formula
  include Language::Python::Virtualenv

  desc "Terminal todo app with sub-todos, due dates, and git sync"
  homepage "https://github.com/riyasyash/td"
  url "https://github.com/riyasyash/td/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "e302048c1096177258013b3ab19f62a6bd08a182ec1d47da6eebf417c73040b7"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "td v", shell_output("#{bin}/td --version")
    system bin/"td", "--cli", "list"
  end
end
