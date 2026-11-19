# PLACEHOLDER. placket has no published release yet, so this cask names none.
# It has the shape GoReleaser v2.19.0 writes for placket, at version 0.1.0, with no real SHA-256.
# `disable!` makes `brew install` refuse it with that reason instead of failing on a download.
# .github/workflows/update.yml replaces this whole file with the cask of the first published release.
cask "placket" do
  version "0.1.0"
  sha256 :no_check

  on_macos do
    on_arm do
      url "https://github.com/orilloai/placket/releases/download/v0.1.0/placket_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/orilloai/placket/releases/download/v0.1.0/placket_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/orilloai/placket/releases/download/v0.1.0/placket_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/orilloai/placket/releases/download/v0.1.0/placket_#{version}_linux_amd64.tar.gz"
    end
  end

  name "placket"
  desc "Mediates content crossing between parties and signs a receipt for every decision"
  homepage "https://github.com/orilloai/placket"

  livecheck do
    skip "Auto-generated on release."
  end

  disable! date: "2026-11-19", because: "has no published release yet"

  binary "placket"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/placket"]
    end
  end

  zap :not_required
end
