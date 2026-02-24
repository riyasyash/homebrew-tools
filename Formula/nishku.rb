class Nishku < Formula
  desc "Monitor-aware workspace manager"
  homepage "https://github.com/riyasyash/nishku"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/riyasyash/nishku/releases/download/v0.1.0/nishku-0.1.0-darwin-arm64.tar.gz"
    sha256 "fe8bd007aa2141329da835a8e89c39b63a5665526b4364a36b4536168b97e291"
  else
    url "https://github.com/riyasyash/nishku/releases/download/v0.1.0/nishku-0.1.0-darwin-amd64.tar.gz"
    sha256 "ff60128699a378c1d1f2a00cd7e63a6e94b34fe801f620332681ff2193e5c0f3"
  end

  def install
    bin.install "nishku"
  end

  test do
    system "#{bin}/nishku", "version"
  end
end