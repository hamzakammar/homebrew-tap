cask "lockin" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

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
