# Homebrew Tap — Genesis AI Skills CLI

Install AI skills directly into your projects from the command line.

## Installation

```bash
brew tap villaextech/skills
brew install villaex-skills
```

## Usage

```bash
# Login with your Genesis AI account
villaex-skills login

# Search for skills
villaex-skills search "cold email"

# Install a skill for your platform
villaex-skills install <skill-id> --platform cursor
villaex-skills install <skill-id> --platform claude-md
villaex-skills install <skill-id> --platform copilot

# See all commands
villaex-skills --help
```

## Supported Platforms

| Platform | File Generated |
|---|---|
| Claude Code | `CLAUDE.md` |
| Cursor | `.cursorrules` |
| GitHub Copilot | `.github/copilot-instructions.md` |
| Gemini CLI | `GEMINI.md` |
| Windsurf | `.windsurfrules` |
| OpenCode | `AGENTS.md` |

## Links

- [Genesis AI Dashboard](https://skills.villaextechnologies.com)
- [VillaEx Technologies](https://villaextechnologies.com)
