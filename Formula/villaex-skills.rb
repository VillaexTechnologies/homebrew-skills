class VillaexSkills < Formula
  desc "CLI to install Genesis AI skills into your projects"
  homepage "https://skills.villaextechnologies.com"
  url "https://github.com/VillaexTechnologies/homebrew-skills/releases/download/v1.0.0/villaex-skills-1.0.0.tar.gz"
  sha256 "4459dbe60a93d44ab38d00cc140929cb7c81430b4606b7eb32560c03398da966"
  license "MIT"

  depends_on "node"

  def install
    libexec.install "bin", "src", "package.json"
    bin.install_symlink libexec/"bin/villaex-skills.js" => "villaex-skills"
    bin.install_symlink libexec/"bin/villaex-skills.js" => "genesis-skills"
  end

  test do
    assert_match "villaex/skills", shell_output("#{bin}/villaex-skills --version")
  end
end
