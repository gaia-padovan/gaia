# Claude Skills — Veo Design Team
**Last updated:** 2026-03-06  
**Maintained by:** Gaia

---

## What are skills?

Skills are pre-loaded instructions that tell Claude how to behave for a specific task. Instead of explaining context every time, you invoke a skill and Claude already knows the role, the rules, and the output format.

Think of them as reusable prompts with Veo's knowledge baked in.

---

## Available skills

### 🎨 `ux-writing`
**Use for:** Buttons, labels, error states, empty states, tooltips, onboarding copy — any product microcopy.

Applies Veo's brand voice rules adapted for UI constraints. Connected to the brand ToV (see below) — one source of truth.

**Invoke it:**
> "Write microcopy for the empty state on the clips page. The user hasn't recorded anything yet. Goal: encourage first recording."

**Output includes:** Primary copy · secondary copy · error state · empty state · A/B variant · voice note

---

### 🔬 `user-interview-synthesizer`
**Use for:** Turning raw interview notes or transcripts into structured research insights.

**Invoke it:**
> "Synthesize these interviews. Research goal: understand why coaches drop off during onboarding. Product context: Veo Go activation flow."

**Output includes:** Research summary · key themes · JTBD · pain points · opportunities · notable quotes

---

### 🖼️ `ux-review`
**Use for:** Heuristic evaluation of any UI screen against Nielsen's 10 usability heuristics.

**Invoke it:**
> "ux-review [Figma URL]"

---

### 📐 `dpreview`
**Use for:** Full design review scored against Veo's Experience Design Principles (the full scorecard with 0A/0B/1/2 ratings).

**Invoke it:**
> "review [Figma URL]"

Produces two Figma pages automatically:
1. **Design Review** — scorecard + improvement cards + summary bar
2. **Proposed Changes** — visual with phone frames, numbered callouts, and change legend

---

### ✍️ `veo-blog-tov`
**Use for:** Writing, editing, or reviewing Veo blog and editorial content.

This is also the **source of truth for Veo's brand voice** — the `ux-writing` skill references it directly. Update this file and both skills stay in sync.

---

## How skills are connected

```
veo-blog-tov-SKILL.md  ← source of truth for brand voice
        ↑
        └── referenced by ux-writing.md (UI adaptations on top)
```

The blog ToV and ux-writing are separate skills — you can invoke them independently — but they share one set of voice rules. Edit the voice rules once, both skills update.

---

## How to use a skill with Claude

Just describe what you need and Claude will apply the right skill. Or be explicit:

```
"Use the ux-writing skill to write copy for..."
"Synthesize these interviews using the user-interview-synthesizer skill"
"review figma.com/design/..."
```

---

## Requesting a new skill

If you find yourself repeating the same context to Claude across sessions — write a brief spec:

- **Name** — what to call it
- **Trigger** — when should it activate?
- **Role** — what expert does Claude play?
- **Output** — what format should results come in?

Send it to Gaia or add it directly to `~/.claude/skills/`.

