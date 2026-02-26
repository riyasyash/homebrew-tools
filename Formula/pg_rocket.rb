class PgRocket < Formula
  desc "Extract referentially complete data subsets from PostgreSQL"
  homepage "https://github.com/riyasyash/pg_rocket"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riyasyash/pg_rocket/releases/download/v0.0.1/pg_rocket_0.0.1_Darwin_arm64.tar.gz"
      sha256 "0d1d599bf9b2ffedb0eee8c91cb2e83bf0d3b32a97b634c7d970832580d0fcba"
    else
      url "https://github.com/riyasyash/pg_rocket/releases/download/v0.0.1/pg_rocket_0.0.1_Darwin_x86_64.tar.gz"
      sha256 "97e8ae55c4c6d61c399247d810d6591a6c7386ae4c1392d93c737b8132cc1ba3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/riyasyash/pg_rocket/releases/download/v0.0.1/pg_rocket_0.0.1_Linux_arm64.tar.gz"
      sha256 "e31aeabaaa821084792f3a22ff914b95769794bd53870f1ee35017f33c840762"
    else
      url "https://github.com/riyasyash/pg_rocket/releases/download/v0.0.1/pg_rocket_0.0.1_Linux_x86_64.tar.gz"
      sha256 "963a639dbd0fae5f72a1cba6f6fd107871f84c09d903817c99a5b937a385eba1"
    end
  end

  def install
    bin.install "pg_rocket"
  end

  test do
    assert_match "pg_rocket v#{version}", shell_output("#{bin}/pg_rocket version")
  end
end
