# PRD Interrogate Skills

Ruthless requirements interrogation skills for Claude Code.

## Skills

### prd-interrogate

A comprehensive requirements interrogation skill that asks exhaustive questions about app/product ideas until zero assumptions remain.

**Features:**
- 24+ interactive questions across 6 rounds
- Multi-select checkbox questions (use spacebar to select)
- Covers: users, tech stack, constraints, edge cases, success metrics
- Generates complete requirements summary
- Never codes or suggests - only interrogates

**When to use:**
- Planning a new app or feature
- Starting a project and need to clarify requirements
- Product discovery phase
- Before writing PRD documentation

**How to invoke:**
```
/prd-interrogate
prd mode
interrogate my requirements
```

## Installation

### Option 1: One-line install (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/ducduy2612/prd-interrogate-skills/main/install.sh | bash
```

### Option 2: Manual install

1. Clone this repository:
```bash
git clone https://github.com/ducduy2612/prd-interrogate-skills.git
cd prd-interrogate-skills
```

2. Copy the skill to your Claude skills directory:
```bash
mkdir -p ~/.claude/skills/prd-interrogate
cp skills/prd-interrogate/SKILL.md ~/.claude/skills/prd-interrogate/
```

3. Restart Claude Code

### Option 3: Claude Code Plugin Marketplace

```bash
/plugin marketplace add ducduy2612/prd-interrogate-skills
/plugin install prd-interrogate@ducduy2612-prd-interrogate-skills
```

## Usage

After installation, simply invoke the skill:

```
I want to build a task management app, prd mode
```

The skill will:
1. Present interactive questions with checkboxes
2. Use **spacebar** to select/deselect options
3. Press **Enter** to submit each question group
4. Ask follow-up questions for vague answers
5. Generate a complete requirements summary

## Example

```
You: I want to build a habit tracker app

Claude: [Presents 6 rounds of interactive questions]
       Round 1: Core Foundation (4 questions)
       Round 2: Users & Stakeholders (4 questions)
       Round 3: Functional Core (4 questions)
       Round 4: Technical Stack (4 questions)
       Round 5: Constraints (4 questions)
       Round 6: Success & Edge Cases (4 questions)

[You select options with spacebar, press Enter to continue]

Claude: [Generates complete requirements summary]
```

## Requirements

- Claude Code CLI
- Skill uses AskUserQuestion for interactive UI

## Contributing

Contributions welcome! Feel free to:
- Report bugs
- Suggest new questions
- Improve the interrogation flow
- Submit PRs

## License

MIT License - feel free to use and modify for your needs.

## Author

Created by [@ducduy2612](https://github.com/ducduy2612)

## See Also

- [Claude Code Documentation](https://code.claude.com)
- [Anthropic Skills Repository](https://github.com/anthropics/skills)
- [awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills)
