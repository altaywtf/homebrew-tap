cask "endelito" do
  version "1.2.2"
  sha256 "eef77782fe62388e4b572339201077b2cdcd0d8ccb9a82fd1ffb350d2d587014"

  url "https://github.com/altaywtf/endelito/releases/download/v#{version}/endelito-#{version}-macos-arm64.zip"
  name "Endelito"
  desc "Menu bar WebKit player and CLI control for Endel"
  homepage "https://github.com/altaywtf/endelito"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Endelito/Endelito.app"
  binary "Endelito/endelito"
end
