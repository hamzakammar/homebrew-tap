cask "lockin" do
  version "1.0.2"
  sha256 "405e88f57320a36cede76b6d0a91e579c0da3a83ed0e36d979f6e73a021b4d29"

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
