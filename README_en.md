# 🇵🇱 Polish Agent Skills

A collection of Polish-language skills for AI agents (Claude Code, Gemini CLI, Cursor). Ready-to-install instructions covering marketing, SEO, content creation, sales, and copywriting — optimized for the Polish market.

**Why Polish skills?** AI models write in Polish but think in English. These skills contain Polish copywriting formulas, Polish personas, Polish benchmarks, and anti-patterns specific to the Polish market. They're not translations — they were built from real experience with Polish SaaS projects.

## Quick Start

### Claude Code
```bash
# Copy a single skill to ~/.claude/skills/
cp -r skills/marketing/copywriting ~/.claude/skills/

# Or install all
cp -r skills/*/* ~/.claude/skills/
```

### Gemini CLI
```bash
cp -r skills/marketing/copywriting ~/.gemini/skills/
```

### Cursor
Copy the `SKILL.md` content into `.cursor/rules/` as an `.mdc` file.

## Skill Catalog

### 📢 Marketing (5 skills)

| Skill | Description | Tokens |
|-------|-------------|--------|
| [copywriting](skills/marketing/copywriting/) | SaaS copy: homepage, landing page, pricing. PAS, AIDA, BAB, StoryBrand formulas | ~1700 |
| [social-content](skills/marketing/social-content/) | LinkedIn, Twitter/X, Instagram content. Formats, hooks, calendar | ~2100 |
| [email-sequence](skills/marketing/email-sequence/) | Email sequences: onboarding, nurture, win-back, drip campaigns | ~3000 |
| [marketing-psychology](skills/marketing/marketing-psychology/) | 70+ mental models and persuasion techniques for SaaS marketing | ~1400 |
| [marketing-ideas](skills/marketing/marketing-ideas/) | 139+ marketing tactics in 12 categories. Growth hacks, budgeting | ~1800 |

### 🔍 SEO (3 skills + 6 references)

| Skill | Description | Tokens |
|-------|-------------|--------|
| [seo](skills/seo/seo/) | Full SEO audit: technical, on-page, off-page, AI search. 6 reference files | ~5500 |
| [internal-linker](skills/seo/internal-linker/) | Link equity distribution, topic clusters, anchor text optimization | ~1900 |
| [programmatic-seo](skills/seo/programmatic-seo/) | SEO at scale — hundreds of pages from templates per keyword pattern | ~1800 |

### ✍️ Content (4 skills + 7 references)

| Skill | Description | Tokens |
|-------|-------------|--------|
| [content](skills/content/content/) | Content pipeline: SEO articles, briefs, calendars, scoring. 4 templates + 3 references | ~2700 |
| [content-repurpose](skills/content/content-repurpose/) | Repurposing: 1 source → newsletter, social, thread, carousel | ~2100 |
| [content-strategy](skills/content/content-strategy/) | Topic clusters, content calendar, competitor analysis, gap analysis | ~2000 |
| [youtube-scripts](skills/content/youtube-scripts/) | YouTube scripts: hooks, structure, retention editing, thumbnails | ~2200 |

### 💼 Sales (3 skills)

| Skill | Description | Tokens |
|-------|-------------|--------|
| [cold-email](skills/sales/cold-email/) | Cold outreach: 5-email sequences, L1-L3 personalization, A/B testing | ~2100 |
| [discovery-call](skills/sales/discovery-call/) | Discovery calls: SPIN, MEDDIC, Gap Selling. Scripts and objections | ~1800 |
| [sales-context](skills/sales/sales-context/) | Sales foundation: ICP, value proposition, proof points, objections | ~2600 |

## How It Works

A skill is a Markdown file with YAML frontmatter that AI agents load automatically when they recognize a matching context. Key elements:

1. **Frontmatter** — `name`, `description` with triggers (phrases that activate the skill)
2. **Instructions** — step-by-step what the agent should do
3. **Templates** — ready-made structures to fill in
4. **Anti-patterns** — what to avoid (explicit deny list)
5. **References** — additional domain knowledge files (lazy-loaded)

## License

MIT — use, modify, distribute.

## Author

[Dariusz Ciesielski](https://github.com/DariuszCiesielski) — building an AI tools ecosystem for Polish entrepreneurs.

---

*Inspired by: [samber/cc-skills](https://github.com/samber/cc-skills), [alchaincyf/nuwa-skill](https://github.com/alchaincyf/nuwa-skill)*
