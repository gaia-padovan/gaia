# AI Mental Model Evaluator

A structured evaluation tool for the Veo Experience Design team. Use it to stress-test any AI-powered feature before it ships — not after.

---

## What It's For

Across Veo's products, we're shipping more features that involve AI — automatic highlights, smart tagging, recommendations, predictive coaching insights, personalized feeds. These features have a failure mode that's invisible in Figma and only shows up once real users interact with the product: **they don't understand the AI, don't trust it, or can't recover when it gets something wrong.**

This tool runs your feature through **8 research-backed mental models** — each targeting a specific way AI experiences break down in the hands of real people. It produces a scored evaluation with concrete design actions, so you know exactly what to fix and in what order.

It works across all of Veo's surfaces — player-facing features, coach tools, club admin, and any product area where AI is doing something on behalf of the user.

---

## When to Use It

Run it when:

- You're designing a new AI-powered feature from scratch
- You're adding AI to an existing flow (recommendations, smart defaults, etc.)
- A feature has shipped and something feels off — users aren't trusting it
- You're preparing for an engineer handoff and want to QA your own design
- A PM or stakeholder asks "did we think about what happens when the AI is wrong?"

---

## How to Use It

Open Claude and type:

```
/ai-mental-model-evaluator
```

Claude will ask you four questions before starting:

1. **What does the AI do?** Describe the feature and what the user sees
2. **Who is the user?** Role, context, what they're trying to accomplish
3. **What are the stakes?** What happens if the AI is wrong? (Low = cosmetic, High = financial, account, safety)
4. **Is the AI visible or invisible?** Is it explicitly labeled, or working in the background?

Answer those, and Claude runs the full evaluation.

---

## What You Get Back

A structured report with:

**Scorecard** — Each of the 8 mental models rated ✅ PASS / ⚠️ WARNING / ❌ FAIL with a one-sentence finding

**Top 3 Design Actions** — Ordered by impact, each with:
- What to change
- Where in the UI/flow
- Why (which mental model it fixes)
- Risk level 🟢 🟡 🔴

**Red Flags** — Anything that should block shipping without engineering or stakeholder sign-off (especially trust, explainability, financial actions, legal implications)

---

## The 8 Mental Models

| # | Model | The Core Question |
|---|-------|-------------------|
| 1 | Need Test | Is this solving a real human need, or is it tech looking for a problem? |
| 2 | Mental Model Gap | Does the user understand what this AI can and can't do? |
| 3 | Trust Calibration | Is the trust we're asking for appropriate to what the AI delivers? |
| 4 | Uncertainty Visibility | How does the design handle "I'm not sure"? |
| 5 | Control & Agency | Does the user maintain final authority? |
| 6 | Error Recovery | When the AI is wrong, can the user catch it and fix it? |
| 7 | Explainability | Does the user need to know why? Can they find out if they want to? |
| 8 | Concept Budget | Are we asking users to learn too much before getting value? |

---

## Example Inputs

> "We're adding automatic highlight reels — the AI picks the best moments from a match and assembles a clip. Users are players who care a lot about which moments are included. Stakes are medium — it's not destructive, but a bad highlight reel is embarrassing. The AI is labeled."

> "The coaching dashboard now surfaces a 'Player Development Score' — an AI-generated number based on match data. Coaches will use this to make decisions about playing time. Stakes are high. The AI label is visible but the calculation is opaque."

> "We're adding a smart feed that personalises what content a player sees first. The AI works invisibly — there's no label. Stakes are low."

---

## Source Basis

Built on research from:
- Google PAIR People + AI Research Guidebook
- Nielsen Norman Group (mental models, AI stigma, cognitive latency)
- Hoffman et al. (2018) — Metrics for Explainable AI
- Google Design Library: UX of AI
- Shape of AI — UX pattern library for AI interfaces

Sources are refreshed weekly. See `sources.md` for full reference list.

---

## Risk Levels

All design actions come with a risk indicator:

- 🟢 **Low** — Safe to implement yourself (copy, visual framing, layout)
- 🟡 **Medium** — Test thoroughly, show an engineer before staging
- 🔴 **High** — Requires engineering review — do not ship without sign-off

---

## Questions or Feedback

If the evaluation misses something important or you want to refine a mental model for a specific Veo surface, flag it in Slack or add a note in `sources.md`.
