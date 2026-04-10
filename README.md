# 🇵🇱 Polish Agent Skills

Kolekcja polskojęzycznych skilli dla agentów AI (Claude Code, Gemini CLI, Cursor). Gotowe do instalacji instrukcje pokrywające marketing, SEO, content, sprzedaż i copywriting — zoptymalizowane pod polski rynek.

**Dlaczego polskie skille?** Modele AI piszą po polsku, ale myślą po angielsku. Te skille zawierają polskie formuły copywriterskie, polskie persony, polskie benchmarki i anty-wzorce specyficzne dla polskiego rynku. Nie są tłumaczeniem — powstały na bazie doświadczeń z polskimi projektami SaaS.

## Szybki start

### Claude Code
```bash
# Skopiuj wybrany skill do ~/.claude/skills/
cp -r skills/marketing/copywriting ~/.claude/skills/

# Lub zainstaluj wszystkie
cp -r skills/*/* ~/.claude/skills/
```

### Gemini CLI
```bash
# Skopiuj do ~/.gemini/skills/
cp -r skills/marketing/copywriting ~/.gemini/skills/
```

### Cursor
Skopiuj zawartość `SKILL.md` do `.cursor/rules/` jako plik `.mdc`.

## Katalog skilli

### 📢 Marketing (5 skilli)

| Skill | Opis | Tokeny |
|-------|------|--------|
| [copywriting](skills/marketing/copywriting/) | Copy SaaS: homepage, landing page, pricing. Formuły PAS, AIDA, BAB, StoryBrand | ~1700 |
| [social-content](skills/marketing/social-content/) | Treści na LinkedIn, Twitter/X, Instagram. Formaty, haki, kalendarz | ~2100 |
| [email-sequence](skills/marketing/email-sequence/) | Sekwencje email: onboarding, nurture, win-back, drip campaigns | ~3000 |
| [marketing-psychology](skills/marketing/marketing-psychology/) | 70+ modeli mentalnych i technik perswazji do marketingu SaaS | ~1400 |
| [marketing-ideas](skills/marketing/marketing-ideas/) | 139+ taktyk marketingowych w 12 kategoriach. Growth hacks, budżetowanie | ~1800 |

### 🔍 SEO (3 skille + 6 referencji)

| Skill | Opis | Tokeny |
|-------|------|--------|
| [seo](skills/seo/seo/) | Kompleksowy audyt SEO: technical, on-page, off-page, AI search. 6 plików referencyjnych | ~5500 |
| [internal-linker](skills/seo/internal-linker/) | Link equity distribution, topic clusters, anchor text optimization | ~1900 |
| [programmatic-seo](skills/seo/programmatic-seo/) | SEO at scale — generowanie setek stron z szablonów per keyword pattern | ~1800 |

### ✍️ Content (4 skille + 7 referencji)

| Skill | Opis | Tokeny |
|-------|------|--------|
| [content](skills/content/content/) | Pipeline contentowy: artykuły SEO, briefy, kalendarze, scoring. 4 szablony + 3 referencje | ~2700 |
| [content-repurpose](skills/content/content-repurpose/) | Repurposing: 1 materiał → newsletter, social, thread, karuzela | ~2100 |
| [content-strategy](skills/content/content-strategy/) | Topic clusters, content calendar, analiza konkurencji, gap analysis | ~2000 |
| [youtube-scripts](skills/content/youtube-scripts/) | Skrypty na YouTube: hook, struktura, retention, thumbnails | ~2200 |

### 💼 Sales (3 skille)

| Skill | Opis | Tokeny |
|-------|------|--------|
| [cold-email](skills/sales/cold-email/) | Cold outreach: sekwencje 5-email, personalizacja L1-L3, A/B testing | ~2100 |
| [discovery-call](skills/sales/discovery-call/) | Rozmowy discovery: SPIN, MEDDIC, Gap Selling. Skrypty i obiekcje | ~1800 |
| [sales-context](skills/sales/sales-context/) | Fundament sprzedaży: ICP, value proposition, proof points, objections | ~2600 |

## Jak to działa?

Skill to plik Markdown z YAML frontmatter, który agent AI ładuje automatycznie gdy rozpozna pasujący kontekst. Kluczowe elementy:

1. **Frontmatter** — `name`, `description` z triggerami (frazy aktywujące skill)
2. **Instrukcje** — krok po kroku co agent ma zrobić
3. **Szablony** — gotowe struktury do wypełnienia
4. **Anty-wzorce** — czego unikać (explicit deny list)
5. **Referencje** — dodatkowe pliki z wiedzą domenową (ładowane lazy)

Szczegóły: [docs/jak-tworzyc-skille.md](docs/jak-tworzyc-skille.md)

## Struktura

```
polish-agent-skills/
├── README.md                    ← ten plik
├── README_en.md                 ← English version
├── skills/
│   ├── marketing/               ← 5 skilli marketingowych
│   ├── seo/                     ← 3 skille SEO + referencje
│   ├── content/                 ← 4 skille contentowe + szablony
│   └── sales/                   ← 3 skille sprzedażowe
├── templates/
│   └── SKILL_TEMPLATE.md        ← szablon do tworzenia nowych skilli
└── docs/
    └── jak-tworzyc-skille.md    ← przewodnik
```

## Tworzenie własnych skilli

Użyj szablonu z [`templates/SKILL_TEMPLATE.md`](templates/SKILL_TEMPLATE.md) i postępuj wg przewodnika w [`docs/jak-tworzyc-skille.md`](docs/jak-tworzyc-skille.md).

## Licencja

MIT — używaj, modyfikuj, dystrybuuj.

## Autor

[Dariusz Ciesielski](https://github.com/DariuszCiesielski) — buduje ekosystem narzędzi AI dla polskich przedsiębiorców.

---

*Zainspirowane: [samber/cc-skills](https://github.com/samber/cc-skills), [alchaincyf/nuwa-skill](https://github.com/alchaincyf/nuwa-skill)*
