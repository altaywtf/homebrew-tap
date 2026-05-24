cask "endelito" do
  version "1.2.1"
  sha256 "88718dc4db704002a234520e831353381781febd160a50d1d38bb0475e4d8c82"

  url "https://github.com/altaywtf/endelito/releases/download/v1.2.1/endelito-macos-arm64.zip"
  name "Endelito"
  desc "Menu bar WebKit player and CLI control for Endel"
  homepage "https://github.com/altaywtf/endelito"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Endelito/Endelito.app"
  binary "Endelito/endelito"
end
