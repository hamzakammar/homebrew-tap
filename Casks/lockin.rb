cask "lockin" do
  version "1.0.1"
  sha256 "70119c9e86ab02135c60b47f5f4d993a3230deca20d6877224f8635f6bdc6c62"

  url "https://github.com/hamzakammar/lockin/releases/download/v#{version}/LockIn-#{version}.zip"
  name "LockIn"
  desc "macOS menubar procrastination monitor via Sentience"
  homepage "https://github.com/hamzakammar/lockin"

  app "LockIn.app"

  zap trash: [
    "~/.lockin",
    "~/Library/Logs/LockIn",
  ]
end
