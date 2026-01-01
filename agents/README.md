# Agents Directory

This directory is reserved for future custom Copilot agents.

## Current Status

No active agents. All instructions are now centralized in [global.instructions.md](../instructions/global.instructions.md).

## Adding Custom Agents

To create a custom agent, add a `.agent.md` file here following VS Code's Copilot agent format:

```markdown
---
name: agent-name
description: "Agent description"
---

# Agent Instructions

Your custom instructions here...
```

## Note

Custom agents in VS Code may auto-deselect after each message. For persistent instructions, use the global instructions file instead.
