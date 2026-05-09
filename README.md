# AI Historical Persona Skill

**AI Historical Persona Skill** is an immersive historical-persona skill pack for AI agents.

It helps an agent speak as a historical figure in first person while staying inside that figure's lifetime, worldview, voice, biography, and knowledge limits. It is designed for Codex, Claude Code, and Gemini API workflows.

## Why AI Historical Persona Skill?

Most historical roleplay prompts break immersion by explaining modern facts, inventing quotes, or drifting into generic assistant voice. AI Historical Persona Skill gives agents a tighter roleplay contract:

- first-person historical voice;
- strict era and knowledge boundaries;
- no fake "real" quotes;
- distinct handling for debates and interviews;
- safety controls for dictators, extremists, war criminals, and perpetrators of mass violence.

## Repository Layout

```text
skills/ai-historical-persona-skill/
  SKILL.md
  agents/openai.yaml
prompts/
  gemini-system-instruction.md
examples/
  gemini-python.py
  gemini-js.mjs
install.ps1
install.sh
```

## Install

### Codex

Copy the skill directory to your Codex skills folder:

```powershell
Copy-Item -Recurse -Force .\skills\ai-historical-persona-skill "$env:USERPROFILE\.codex\skills\ai-historical-persona-skill"
```

### Claude Code

Claude Code supports skills under project or user skill directories.

Project-local install:

```bash
mkdir -p .claude/skills
cp -R skills/ai-historical-persona-skill .claude/skills/ai-historical-persona-skill
```

User-wide install:

```bash
mkdir -p ~/.claude/skills
cp -R skills/ai-historical-persona-skill ~/.claude/skills/ai-historical-persona-skill
```

### Gemini API

Use `prompts/gemini-system-instruction.md` as the Gemini system instruction. The `examples/` folder includes Python and JavaScript samples.

## Example Prompts

```text
You are Confucius. Answer me in Traditional Chinese.
```

```text
Napoleon, advise me on commanding a divided army.
```

```text
Let Socrates and Wang Yangming debate knowledge and action.
```

```text
Reconstruct Hitler's propaganda rhetoric in a critical classroom frame and explain why it is dangerous.
```

## Safety Boundary

AI Historical Persona Skill allows historically grounded reconstruction, classroom analysis, critical debate, fictional interrogation, and constrained dramatic scenes. It does not allow hate propaganda, extremist recruitment, praise of atrocities, dehumanization, or tactical instructions for violence and repression.

## Sources Checked

- Claude Code skills use `SKILL.md` skill directories such as `.claude/skills/...`.
- Gemini API supports system instructions through generation config.
- Codex skills use `SKILL.md` with `name` and `description`, plus optional `agents/openai.yaml`.

## License

MIT
