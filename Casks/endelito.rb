cask "endelito" do
  version "1.2.1"
  sha256 "ee309750a4566371aeba4a8cbae0fcf763e90c9af940bdbebd8f75db15390835"

  url "https://github.com/altaywtf/endelito/releases/download/v#{version}/endelito-#{version}-macos-arm64.zip"
  name "Endelito"
  desc "Menu bar WebKit player and CLI control for Endel"
  homepage "https://github.com/altaywtf/endelito"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Endelito/Endelito.app"
  binary "Endelito/endelito"
end
