class Endelito < Formula
  desc "Menu bar WebKit player and CLI control for Endel"
  homepage "https://github.com/altaywtf/endelito"
  url "https://github.com/altaywtf/endelito/releases/download/v1.2.0/endelito-macos-arm64.zip"
  version "1.2.0"
  sha256 "a9541ffb6d9a4f167461ccb264797ee68859e4a6a6416d5b96a842c19e1364f8"

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
