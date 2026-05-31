class Osmo < Formula
  desc "Terraform drift absorber — rewrites .tf files to match real-world state"
  homepage "https://github.com/pandey-raghvendra/osmo"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/pandey-raghvendra/osmo/releases/download/v0.1.2/osmo_0.1.2_darwin_arm64.tar.gz"
      sha256 "992369f18281aba03e729fc0318a0d8b6ea2d68b5ce04f846334e97271047df8"
    end
    on_intel do
      url "https://github.com/pandey-raghvendra/osmo/releases/download/v0.1.2/osmo_0.1.2_darwin_amd64.tar.gz"
      sha256 "dceaade18900c091ba56861daa026fc4eb21c429c1dfd1d9d874c293a24e5c3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pandey-raghvendra/osmo/releases/download/v0.1.2/osmo_0.1.2_linux_arm64.tar.gz"
      sha256 "87f16d1b6e523acbce88ff6e0c0336f590e651f64238ea026385698702f2a227"
    end
    on_intel do
      url "https://github.com/pandey-raghvendra/osmo/releases/download/v0.1.2/osmo_0.1.2_linux_amd64.tar.gz"
      sha256 "826d03743ccd56fe91f5b13737433cb5c623e7687365f552a12fcc04d88cbf2e"
    end
  end

  def install
    bin.install "osmo"
  end

  test do
    system "#{bin}/osmo", "-version"
  end
end
