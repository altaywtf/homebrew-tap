cask "endelito" do
  version "1.2.0"
  sha256 "a9541ffb6d9a4f167461ccb264797ee68859e4a6a6416d5b96a842c19e1364f8"

  url "https://github.com/altaywtf/endelito/releases/download/v#{version}/endelito-macos-arm64.zip"
  name "Endelito"
  desc "Menu bar WebKit player and CLI control for Endel"
  homepage "https://github.com/altaywtf/endelito"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Endelito/Endelito.app"
  binary "Endelito/endelito"
end
