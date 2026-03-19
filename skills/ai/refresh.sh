#!/bin/bash
# Refreshes the ai/mental-model skill by re-fetching all sources.
# Runs weekly via system crontab. Logs to ~/.claude/skills/ai/refresh.log

LOG="$HOME/.claude/skills/ai/refresh.log"
SKILL="$HOME/.claude/skills/ai/ai-mental-model-evaluator.md"
SOURCES="$HOME/.claude/skills/ai/sources.md"

echo "[$(date '+%Y-%m-%d %H:%M')] Starting skill refresh..." >> "$LOG"

claude -p "
You are refreshing the AI Mental Model skill file at $SKILL.

1. Read the current skill file at $SKILL
2. Read the source list at $SOURCES
3. Fetch each URL listed in sources.md
4. Synthesize any new findings, patterns, or frameworks from the sources
5. Update $SKILL with:
   - Any new mental models or sub-patterns worth adding
   - Updated design prompts based on new research
   - New source entries in the 'Source Basis' section at the bottom
   - Updated date references where relevant
6. Preserve the existing structure, output format, and all 8 mental models
7. Update the 'Last refresh' date in $SOURCES to today's date

Be conservative — only add content that genuinely strengthens the skill. Do not remove existing mental models.
" >> "$LOG" 2>&1

echo "[$(date '+%Y-%m-%d %H:%M')] Refresh complete." >> "$LOG"
