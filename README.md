# Copilot Rules

Community-maintained GitHub Copilot instructions for Visual Studio Code. A comprehensive collection of rules designed to improve code generation accuracy, prevent common errors, and enforce best practices.

## Purpose

GitHub Copilot is powerful but can hallucinate non-existent APIs, lose context in long sessions, and generate inconsistent code. This project provides a battle-tested set of instructions that:

- Prevent AI hallucinations (inventing functions, methods, or APIs that don't exist)
- Maintain context across long coding sessions
- Enforce consistent code patterns and architecture
- Catch potential bugs before they're written
- Improve code quality and security

## What's Included

**`.vscode/settings.json`** - 100+ instructions organized by category:

- **Anti-Hallucination** - Prevent inventing non-existent code
- **Context Management** - Maintain accuracy across long sessions
- **Code Quality** - Consistency, dead code detection, error patterns
- **Workflow** - Analyze before coding, provide action plans
- **Architecture** - DRY principle, maintainable patterns
- **Performance & Security** - Production-ready code standards
- **Language Support** - TypeScript, JavaScript, Python, C#/.NET

## Installation

### Option 1: Workspace Settings (Recommended)

Copy `.vscode/settings.json` to your project's `.vscode` folder:

```bash
mkdir -p .vscode
cp settings.json /path/to/your/project/.vscode/settings.json
```

### Option 2: Global User Settings

1. Open VSCode Settings (`Ctrl+,` or `Cmd+,`)
2. Click "Open Settings (JSON)" icon (top right)
3. Merge content from `.vscode/settings.json` with your existing settings

### Usage

Reload VSCode: `Ctrl+Shift+P` → `Developer: Reload Window`

Copilot will now follow all instructions automatically.

## Contributing

Found a Copilot error pattern or instruction that improves code quality? Share it.

1. Fork this repository
2. Edit `.vscode/settings.json` - add or improve instructions
3. Test your changes
4. Submit a Pull Request

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

### What to Contribute

- Instructions that fix specific Copilot behaviors
- Language-specific rules (Python, TypeScript, C#, Go, Rust)
- Framework patterns (React, Next.js, Express, FastAPI)
- Real-world examples of prevented bugs

## Examples

### Before
```typescript
// Copilot invents non-existent method
user.getFullName(); // Method doesn't exist
```

### After
```typescript
// Copilot verifies first
// VERIFY: User class doesn't have getFullName()
const fullName = `${user.firstName} ${user.lastName}`;
```

## License

MIT License - See [LICENSE](LICENSE)

## Links

- [Issues](https://github.com/LightZirconite/copilot-rules/issues)
- [Discussions](https://github.com/LightZirconite/copilot-rules/discussions)
- [Pull Requests](https://github.com/LightZirconite/copilot-rules/pulls)
