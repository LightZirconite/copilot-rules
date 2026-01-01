# Copilot Rules

Instructions for GitHub Copilot to improve code quality and enforce best practices.

## Features

- **Code in English** - All code output in English (variables, functions, comments)
- **Response in your language** - Copilot responds in the language you use
- **Production-ready code** - No placeholders, proper error handling
- **Modern patterns** - TypeScript strict mode, React hooks, async/await
- **Anti-hallucination** - Verifies libraries/APIs before using them
- **Action-oriented** - Executes immediately, no permission asking

## Quick Install

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/LightZirconite/copilot-rules/main/scripts/install-copilot-instructions.bat -OutFile i.bat; .\i.bat; rm i.bat
```

### macOS / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/LightZirconite/copilot-rules/main/scripts/install-copilot-instructions.sh | bash
```

## Manual Installation

1. Copy `instructions/global.instructions.md` to your VS Code prompts folder:
   - **Windows:** `%APPDATA%\Code\User\prompts\`
   - **macOS:** `~/Library/Application Support/Code/User/prompts/`
   - **Linux:** `~/.config/Code/User/prompts/`

2. Enable instruction files in VS Code settings:
   ```json
   {
     "github.copilot.chat.codeGeneration.useInstructionFiles": true
   }
   ```

3. Reload VS Code (`Ctrl+Shift+P` → `Developer: Reload Window`)

## What It Does

The instructions teach Copilot to:

1. **Write code in English** - Consistent, professional codebases
2. **Execute tasks immediately** - No "Should I proceed?" questions
3. **Handle edge cases** - Empty arrays, API errors, undefined values
4. **Follow security practices** - No hardcoded secrets, SQL injection prevention
5. **Provide complete code** - No `// ...existing code...` fragments

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT - [LICENSE](LICENSE)
