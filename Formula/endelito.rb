class Endelito < Formula
  desc "Menu bar WebKit player and CLI control for Endel"
  homepage "https://github.com/altaywtf/endelito"
  url "https://github.com/altaywtf/endelito/releases/download/v1.1.0/endelito-macos-arm64.zip"
  sha256 "6c527f85455bf9fb562c497eca45386176c31b36f6b33de917692dc9934a8461"

  depends_on arch: :arm64
  depends_on :macos

  def install
    libexec.install "Endelito.app"
    libexec.install "endelito"
    (bin/"endelito").write_env_script libexec/"endelito", ENDELITO_APP: libexec/"Endelito.app"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/endelito --version")
  end
end
