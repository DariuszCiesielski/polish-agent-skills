<p align="center">
  <strong>Polish Agent Skills — polskojęzyczne skille AI dla marketingu, SEO, contentu i sprzedaży</strong><br/>
  15 gotowych skilli zoptymalizowanych pod polski rynek. Claude Code, Gemini CLI, Cursor.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/skilli-15-blue" alt="15 skills"/>
  <img src="https://img.shields.io/badge/język-PL-red" alt="Polski"/>
  <img src="https://img.shields.io/badge/licencja-MIT-green" alt="MIT"/>
  <img src="https://img.shields.io/badge/Claude_Code-✓-blueviolet" alt="Claude Code"/>
  <img src="https://img.shields.io/badge/Gemini_CLI-✓-orange" alt="Gemini CLI"/>
  <img src="https://img.shields.io/badge/Cursor-✓-teal" alt="Cursor"/>
</p>

---

## Dlaczego polskie skille?

Modele AI piszą po polsku, ale **myślą po angielsku**. Dlatego generują copy brzmiące jak tłumaczenie, ignorują polskie formuły sprzedażowe i nie znają specyfiki polskiego rynku.

Te skille to nie tłumaczenie angielskich szablonów. Powstały na bazie **doświadczeń z polskich projektów SaaS** i zawierają:

- Polskie formuły copywriterskie (PAS, AIDA, BAB dostosowane do PL)
- Polskie persony i segmenty rynku
- Benchmarki i anty-wzorce specyficzne dla polskiego rynku
- Zgodność z RODO w kontekście cold outreach i lead generation

| Fakt | Wartość |
|------|---------|
| Polskich firm korzystających z AI w marketingu | ~12% (vs 34% EU) |
| Koszt agencji marketingowej dla MŚP | 5 000-15 000 zł/mies. |
| Czas oszczędzony przez AI skille | ~20h/tydzień na content + outreach |
| Polskich skilli AI na GitHubie | Praktycznie zero — to jedne z pierwszych |

---

## Szybki start — 1 komenda

### Claude Code Plugin Marketplace (rekomendowane)

```
/plugin marketplace add DariuszCiesielski/polish-agent-skills
```

Następnie:
1. `Browse and install plugins`
2. Wybierz `polish-agent-skills`
3. Wybierz zestaw: `polish-seo-skills`, `polish-content-skills`, `polish-marketing-skills` lub `polish-sales-skills`
4. `Install now`

Alternatywnie, zainstaluj konkretny pakiet bezpośrednio:

```
/plugin install polish-seo-skills@polish-agent-skills
/plugin install polish-content-skills@polish-agent-skills
/plugin install polish-marketing-skills@polish-agent-skills
/plugin install polish-sales-skills@polish-agent-skills
```

### Instalator bash (dla innych edytorów / wszystkie skille na raz)

```bash
curl -fsSL https://raw.githubusercontent.com/DariuszCiesielski/polish-agent-skills/main/install.sh | bash
```

### Instalacja ręczna

```bash
git clone https://github.com/DariuszCiesielski/polish-agent-skills.git
cd polish-agent-skills
./install.sh
```

### Gemini CLI / Cursor

```bash
# Gemini CLI — skopiuj do ~/.gemini/skills/
cp -r skills/*/* ~/.gemini/skills/

# Cursor — skopiuj SKILL.md do .cursor/rules/ jako plik .mdc
```

---

## Co dostajesz

### Marketing (5 skilli)

| # | Skill | Co robi | Przykład użycia |
|---|-------|---------|-----------------|
| 1 | **copywriting** | Copy SaaS: homepage, landing, pricing. Formuły PAS, AIDA, BAB, StoryBrand | "napisz copy na landing page" |
| 2 | **social-content** | Treści LinkedIn, Twitter/X, Instagram. Formaty, haki, kalendarz | "przygotuj posty na LinkedIn na tydzień" |
| 3 | **email-sequence** | Sekwencje email: onboarding, nurture, win-back, drip | "napisz sekwencję onboarding 5 maili" |
| 4 | **marketing-psychology** | 70+ modeli mentalnych i technik perswazji | "zastosuj social proof na stronie cennika" |
| 5 | **marketing-ideas** | 139+ taktyk marketingowych w 12 kategoriach | "podaj 10 growth hacków na start" |

### SEO (3 skille + 6 referencji)

| # | Skill | Co robi | Przykład użycia |
|---|-------|---------|-----------------|
| 6 | **seo** | Audyt SEO: technical, on-page, off-page, AI search | "zrób audyt SEO mojej strony" |
| 7 | **internal-linker** | Link equity, topic clusters, anchor text | "zoptymalizuj linki wewnętrzne" |
| 8 | **programmatic-seo** | SEO at scale — setki stron z szablonów per keyword | "wygeneruj 50 stron per miasto" |

### Content (4 skille + 7 referencji)

| # | Skill | Co robi | Przykład użycia |
|---|-------|---------|-----------------|
| 9 | **content** | Pipeline contentowy: artykuły SEO, briefy, scoring | "napisz artykuł SEO o voicebotach AI" |
| 10 | **content-repurpose** | 1 materiał → newsletter, social, thread, karuzela | "przetwórz artykuł na 5 postów LinkedIn" |
| 11 | **content-strategy** | Topic clusters, calendar, gap analysis | "zaplanuj content na Q3" |
| 12 | **youtube-scripts** | Skrypty YT: hook, struktura, retention, thumbnails | "napisz skrypt na film o AI w firmie" |

### Sprzedaż (3 skille)

| # | Skill | Co robi | Przykład użycia |
|---|-------|---------|-----------------|
| 13 | **cold-email** | Cold outreach: sekwencje 5-email, personalizacja, A/B | "napisz cold email do dyrektora marketingu" |
| 14 | **discovery-call** | Rozmowy discovery: SPIN, MEDDIC, Gap Selling | "przygotuj skrypt na discovery call" |
| 15 | **sales-context** | ICP, value proposition, proof points, objections | "zdefiniuj ICP dla mojego SaaS-a" |

---

## Jak to działa?

Skill to plik Markdown z YAML frontmatter, który agent AI ładuje automatycznie gdy rozpozna pasujący kontekst:

1. **Frontmatter** — `name`, `description` z triggerami (frazy aktywujące skill)
2. **Instrukcje** — krok po kroku co agent ma zrobić
3. **Szablony** — gotowe struktury do wypełnienia
4. **Anty-wzorce** — czego unikać (explicit deny list)
5. **Referencje** — dodatkowe pliki z wiedzą domenową (lazy loading)

Szczegóły: [docs/jak-tworzyc-skille.md](docs/jak-tworzyc-skille.md)

---

## Tworzenie własnych skilli

Szablon: [`templates/SKILL_TEMPLATE.md`](templates/SKILL_TEMPLATE.md)
Przewodnik: [`docs/jak-tworzyc-skille.md`](docs/jak-tworzyc-skille.md)

---

## Chcesz więcej?

Skille to darmowe narzędzia. Pełne wdrożenie AI w firmie wymaga platformy.

- **[Specjalista SEO](https://seo-specialist.vercel.app)** — audyt SEO + GEO z dashboardem, raportami PDF i trackingiem
- **[Marketing Hub](https://marketing-hub-blush.vercel.app)** — automatyzacja marketingu z AI: content, social, email
- **[Content Marketing Hub](https://content-marketing-hub-psi.vercel.app)** — pipeline contentowy od briefu do publikacji
- **[Kontakt](https://aiwbiznesie.online/kontakt/)** — wdrożenia AI dla polskich firm

---

## Struktura

```
polish-agent-skills/
├── install.sh                   ← instalator (1 komenda)
├── README.md                    ← ten plik
├── README_en.md                 ← English version
├── skills/
│   ├── marketing/               ← 5 skilli marketingowych
│   ├── seo/                     ← 3 skille SEO + referencje
│   ├── content/                 ← 4 skille contentowe + szablony
│   └── sales/                   ← 3 skille sprzedażowe
├── templates/
│   └── SKILL_TEMPLATE.md        ← szablon nowego skilla
└── docs/
    └── jak-tworzyc-skille.md    ← przewodnik
```

---

## Licencja

MIT — używaj komercyjnie, modyfikuj, dystrybuuj.

---

<p align="center">
  <sub>Zbudowane przez <a href="https://aiwbiznesie.online">AI w Biznesie</a> — automatyzacja i wdrożenia AI dla polskich firm</sub>
</p>
