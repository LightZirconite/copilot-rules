# Contributing to Copilot Rules

Thank you for helping improve GitHub Copilot instructions!

## Why Contribute?

Every improvement you share benefits the entire community. When you discover a pattern that makes Copilot produce better code, others can benefit from it too.

## How to Contribute

### Simple Process

1. **Fork** this repository
2. **Edit** `instructions/global.instructions.md`
3. **Test** your changes with Copilot
4. **Submit** a Pull Request explaining what you improved

### What We Need

#### High Priority
- Instructions that prevent Copilot hallucinations
- Language-specific patterns (TypeScript, Python, Go, Rust, etc.)
- Framework guidelines (React, Next.js, Express, FastAPI, etc.)
- Security best practices
- Performance optimizations

#### Also Welcome
- Better workflow patterns
- Error handling improvements
- Code quality standards
- Edge case handling

## Guidelines

### Good Contributions

**Specific and actionable:**
```markdown
## TypeScript
- Use `unknown` instead of `any` for unsafe types
- Prefer type guards over type assertions
```

**Addresses real problems:**
```markdown
## Anti-Hallucination
- Verify npm packages exist before suggesting them
- Check API documentation when uncertain
```

### Avoid

- Vague or subjective guidelines
- Model-specific instructions (GPT-4, Claude, etc.)
- Overly complex rules that are hard to follow
- Duplicating existing instructions

## Testing Your Changes

1. Copy your modified `global.instructions.md` to VS Code prompts folder
2. Open a test project
3. Ask Copilot to perform tasks related to your changes
4. Verify the output matches your expectations

## Code of Conduct

- Be respectful and constructive
- Focus on improvements, not criticism
- Test your contributions before submitting

## Questions?

Open an issue if you have questions about contributing.
