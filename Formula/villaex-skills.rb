class VillaexSkills < Formula
  desc "CLI to install Genesis AI skills into your projects"
  homepage "https://skills.villaextechnologies.com"
  url "https://registry.npmjs.org/@villaex/skills/-/skills-1.0.0.tgz"
  sha256 "7590f53d4fe66017778d41bb9a9340029b57d9cebb27c6a3489eb6df9e71f906"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["package/*"]
    bin.install_symlink libexec/"bin/villaex-skills.js" => "villaex-skills"
    bin.install_symlink libexec/"bin/villaex-skills.js" => "genesis-skills"
  end

  test do
    assert_match "villaex/skills", shell_output("#{bin}/villaex-skills --version")
  end
end
