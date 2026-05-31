class Osmo < Formula
  desc "Terraform drift absorber — rewrites .tf files to match real-world state"
  homepage "https://github.com/pandey-raghvendra/osmo"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/pandey-raghvendra/osmo/releases/download/v0.1.1/osmo_0.1.1_darwin_arm64.tar.gz"
      sha256 "c121f03443eccbe47570db44d3fc841cbb5383be598f4aaa99c73649ae62c8ba"
    end
    on_intel do
      url "https://github.com/pandey-raghvendra/osmo/releases/download/v0.1.1/osmo_0.1.1_darwin_amd64.tar.gz"
      sha256 "ce0ebef2b6c672c701c3513f05b97dbc160823ca011d446fac9b31adc47cc849"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pandey-raghvendra/osmo/releases/download/v0.1.1/osmo_0.1.1_linux_arm64.tar.gz"
      sha256 "070a623a25ad086a32913f6d290d8f0e6deb4b4b10061772b373702c905ec80a"
    end
    on_intel do
      url "https://github.com/pandey-raghvendra/osmo/releases/download/v0.1.1/osmo_0.1.1_linux_amd64.tar.gz"
      sha256 "03b729fd904f8b9b0ff9ebe7003ae3e3bbc507fe2f0d3f6366c7f492e13dd22c"
    end
  end

  def install
    bin.install "osmo"
  end

  test do
    system "#{bin}/osmo", "-version"
  end
end
