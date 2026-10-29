class Td < Formula
  include Language::Python::Virtualenv

  desc "Terminal todo app with sub-todos, due dates, and git sync"
  homepage "https://github.com/riyasyash/TerTod"
  url "https://github.com/riyasyash/TerTod/releases/download/v0.0.1/td-0.0.1.tar.gz"
  sha256 "52061f4a335c5425e7bfdcdc11074e14f12ac1c77c47f429e53911356bab8515"
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
