cask "lockin" do
  version "1.0.7"
  sha256 "5afea187a95dc27d4d84e71e11dba3fb167ca99396297e84f407da9f920b63b9"

  url "https://github.com/hamzakammar/lockin/releases/download/v#{version}/LockIn-#{version}.zip"
  name "LockIn"
  desc "macOS menubar procrastination monitor via Sentience"
  homepage "https://github.com/hamzakammar/lockin"

  app "LockIn.app"

  quarantine false

  zap trash: [
    "~/.lockin",
    "~/Library/Logs/LockIn",
  ]
end
