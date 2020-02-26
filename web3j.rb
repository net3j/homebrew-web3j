
class Web3j < Formula
  desc "web3j command line tools for Ethereum"
  homepage "https://github.com/web3j/web3j"
  url "https://github.com/web3j/web3j-cli/releases/download/v4.5.15/web3j-4.5.15.zip"
  # update with: shasum -a 256
  sha256 "0fc75e89a4b15be6e68a26f3dfda7e2a1606fb5de65afbc80000f9f1ed5388ab"

  depends_on :java => "1.7+"

  def install
    prefix.install "lib"
    bin.install "bin/web3j"
  end

  test do
    system "#{bin}/web3j" "version"
  end
end
