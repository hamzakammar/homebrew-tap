cask "lockin" do
  version "1.0.8"
  sha256 "35fed70a3e5b2487fb01eb7506bf53bd7ea98f5f7858f46c602c566b79b50561"

  url "https://github.com/hamzakammar/lockin/releases/download/v#{version}/LockIn-#{version}.zip"
  name "LockIn"
  desc "macOS menubar procrastination monitor via Sentience"
  homepage "https://github.com/hamzakammar/lockin"

  app "LockIn.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-cr", "#{appdir}/LockIn.app"],
      sudo: false
  end

  zap trash: [
    "~/.lockin",
    "~/Library/Logs/LockIn",
  ]
end
