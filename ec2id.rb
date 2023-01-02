# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ec2id < Formula
  desc ""
  homepage ""
  version "0.1.2"

  on_macos do
    url "https://github.com/thaim/ec2id/releases/download/v0.1.2/ec2id_Darwin_x86_64.tar.gz"
    sha256 "cabea1148081edd7e9ca51ebe3d4ad0869cbfac51d60726e5ec7e5c6dff8c30f"

    def install
      bin.install "ec2id"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Ec2id
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/thaim/ec2id/releases/download/v0.1.2/ec2id_Linux_x86_64.tar.gz"
      sha256 "049322d1e379881bdc72b63e29123de866db743f1fc522a1d7d41603ade77d32"

      def install
        bin.install "ec2id"
      end
    end
  end
end
