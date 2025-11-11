# 🚀 Copilot Rules - Community-Driven GitHub Copilot Instructions

**The most comprehensive, community-maintained collection of GitHub Copilot instructions for Visual Studio Code.**

This project aims to create the **best possible set of instructions** to maximize GitHub Copilot's accuracy, fix common errors, prevent hallucinations, and maintain context across long coding sessions.

## 🎯 Mission

Build the **largest and most effective instruction set** that:
- ✅ Corrects maximum Copilot errors and edge cases
- ✅ Prevents AI hallucinations (inventing non-existent APIs, functions, or methods)
- ✅ Maintains context across long conversations
- ✅ Provides clear, actionable coding guidelines
- ✅ Works across multiple languages and frameworks
- ✅ Enforces best practices for security, performance, and code quality

## 📦 What's Inside

### `.vscode/settings.json`
Complete VSCode configuration with **100+ GitHub Copilot instructions** covering:

- **Workflow & Behavior**: How Copilot should analyze, plan, and execute code changes
- **Anti-Hallucination Measures**: Critical rules to prevent inventing non-existent code
- **Context Management**: Prevent context degradation in long sessions
- **Code Quality**: Consistency, dead code detection, error handling patterns
- **Architecture & Patterns**: DRY principle, maintainable code structure
- **Performance & Security**: Best practices for production-ready code
- **Language-Specific Rules**: TypeScript, JavaScript, Python, C#/.NET optimizations

### Key Features

#### 🛡️ Anti-Hallucination (Critical)
```
- NEVER invent functions, methods, or APIs that don't exist
- ALWAYS verify method signatures and types exist in the codebase
- Flag uncertain suggestions with 'VERIFY:' prefix
```

#### 🧠 Context Preservation
```
- Auto-reset after 12-15 exchanges to prevent degradation
- Re-scan files every 8-10 interactions
- Self-monitoring for contradicting decisions or forgotten patterns
```

#### 🔍 Code Quality Enforcement
```
- Scan for dead code, unused imports, unreachable code
- Check function consistency across the codebase
- Detect potential bugs: null checks, async patterns, race conditions
```

#### ⚡ Smart Workflow
```
- Analyze ENTIRE codebase before making changes
- Provide action plan before execution
- Ask for clarification on ambiguous requests
- Remove ALL debug code before presenting final version
```

## 🚀 Quick Start

### 1. Copy Settings to Your Project

**Option A: Workspace Settings (Recommended)**
```bash
# Copy the settings file to your project
mkdir .vscode
cp .vscode/settings.json /path/to/your/project/.vscode/settings.json
```

**Option B: Global User Settings**
1. Open VSCode Settings (Ctrl+, or Cmd+,)
2. Click the "Open Settings (JSON)" icon in the top right
3. Copy the content from `.vscode/settings.json` and merge with your existing settings

### 2. Reload VSCode
Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac) → `Developer: Reload Window`

### 3. Start Using Copilot
GitHub Copilot will now follow all the instructions automatically. You'll notice:
- More accurate code suggestions
- Better context understanding in long conversations
- Fewer hallucinated APIs or functions
- Cleaner, production-ready code

## 🤝 Contributing

**This project THRIVES on community contributions!**

Every time you:
- Find a Copilot error pattern
- Discover an instruction that improves code quality
- Have an idea to prevent hallucinations
- Want to add language-specific rules

**→ Please share it!** Submit a Pull Request to help everyone benefit.

### How to Contribute

1. **Fork this repository** on GitHub
2. **Add or improve instructions** in `.vscode/settings.json`
3. **Test your changes** - verify they actually improve Copilot's behavior
4. **Submit a Pull Request** explaining what problem your changes solve

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

### What to Contribute

- **New instructions** that fix specific Copilot behaviors
- **Improvements** to existing rules for better clarity
- **Language-specific guidelines** (Python, TypeScript, C#, Go, Rust, etc.)
- **Framework patterns** (React, Next.js, Express, FastAPI, etc.)
- **Real-world examples** of problems solved by specific instructions

## 📊 Project Stats

- **100+ instructions** covering all aspects of code generation
- **8 major categories**: Workflow, Anti-Hallucination, Context, Quality, Architecture, Performance, Security, Documentation
- **Supports**: TypeScript, JavaScript, Python, C#/.NET, and more
- **Community-maintained**: Every contribution makes Copilot better for everyone

## 🌟 Why Use This?

### Before
```typescript
// Copilot might suggest non-existent methods
user.getFullName(); // ❌ This method doesn't exist
```

### After (with these instructions)
```typescript
// Copilot checks first, then suggests correctly
// VERIFY: User class doesn't have getFullName(). 
// Did you mean: user.firstName + ' ' + user.lastName?
const fullName = `${user.firstName} ${user.lastName}`; // ✅ Correct
```

## 📖 Learn More

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [VSCode Settings Reference](https://code.visualstudio.com/docs/getstarted/settings)
- [Issues & Discussions](https://github.com/LightZirconite/copilot-rules/issues)

## 📝 License

MIT License - See [LICENSE](LICENSE) for details.

## 💬 Questions or Ideas?

- Open an [Issue](https://github.com/LightZirconite/copilot-rules/issues)
- Start a [Discussion](https://github.com/LightZirconite/copilot-rules/discussions)
- Submit a [Pull Request](https://github.com/LightZirconite/copilot-rules/pulls)

---

**Together, let's build the most powerful GitHub Copilot instruction set possible!** 🚀

Every contribution, no matter how small, helps the entire community write better code.
