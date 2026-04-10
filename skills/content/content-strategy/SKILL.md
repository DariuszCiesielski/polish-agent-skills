---
name: content-strategy
description: >
  Planowanie strategii contentowej SaaS: topic clusters, content calendar, analiza luk,
  priorytety traffic/leads/authority. Triggery: "strategia contentu", "content strategy",
  "zaplanuj content", "content calendar", "topic clusters", "plan artykułów",
  "co pisać na blog", "content gap analysis", "plan treści".
---

# Content Strategy Planner

Planuje strategię contentową dla projektów SaaS — od audytu istniejącej treści, przez topic clusters, po konkretny kalendarz publikacji z priorytetami.

## Kiedy używać

- Rozpoczynasz blog / content marketing w projekcie SaaS
- Masz blog ale brakuje strategii (losowe tematy, brak spójności)
- Chcesz zaplanować content na kwartał/pół roku
- Potrzebujesz analizy luk contentowych vs konkurencja
- Użytkownik mówi: "co pisać na blog", "zaplanuj content", "strategia treści"

## Zależności

- **Wymagane:** `product-marketing-context` — pliki `target-keywords.md`, `competitor-analysis.md`, `features.md`
- **Opcjonalne:** `seo` — do walidacji keywordów, `content` — do pisania artykułów

Jeśli kontekst marketingowy nie istnieje → zaproponuj najpierw uruchomienie `product-marketing-context`.

## Komendy

```
/content-strategy audit              — audyt istniejącej treści
/content-strategy clusters           — wygeneruj topic clusters
/content-strategy calendar [Q1/Q2..] — kalendarz publikacji
/content-strategy gaps               — analiza luk vs konkurencja
/content-strategy plan               — pełny plan (audit → clusters → calendar)
```

## Proces

### Faza 1: Audyt istniejącej treści

1. **Skanuj projekt** — znajdź wszystkie strony z treścią:
   - Blog posts: `src/app/blog/`, `content/`, `posts/`
   - Landing pages: `src/app/(marketing)/`, `src/app/lp/`
   - Docs: `docs/`, `src/app/docs/`

2. **Dla każdej strony oceń:**
   | Metryka | Jak sprawdzić |
   |---------|--------------|
   | Word count | Policz słowa w treści (bez kodu/nav/footer) |
   | Target keyword | Czy H1/title zawiera keyword? |
   | Aktualność | Data ostatniej modyfikacji (git log) |
   | Linki wewnętrzne | Ile linków do innych stron projektu? |
   | CTA | Czy jest call-to-action? |

3. **Kategoryzuj:**
   - 🟢 **Evergreen** — aktualne, dobrze zoptymalizowane
   - 🟡 **Do odświeżenia** — >6 mies. bez aktualizacji LUB thin content (<800 słów)
   - 🔴 **Do przepisania** — brak keyword focus, brak CTA, <400 słów
   - ⚫ **Do usunięcia** — duplikat, nieaktualne, cannibalizing inny artykuł

### Faza 2: Topic Clusters

Struktura hub & spoke:

```
[Pillar Page] ← główny temat, 2000-3000 słów
  ├── [Supporting Article 1] ← podtemat, 1200-1800 słów
  ├── [Supporting Article 2]
  ├── [Supporting Article 3]
  └── [Supporting Article 4]
```

**Jak budować klastry:**

1. Weź `target-keywords.md` → pogrupuj keywords wg intencji i tematu
2. Dla każdej grupy:
   - **Pillar**: broad keyword, high volume, informational/commercial
   - **Supporting**: long-tail keywords, lower volume, specific intent
3. Mapuj na ścieżkę klienta:
   | Etap | Intent | Typ treści | Przykład |
   |------|--------|-----------|---------|
   | Awareness | Informational | Blog post, guide | "Jak [rozwiązać problem]" |
   | Consideration | Commercial | Comparison, review | "[Produkt] vs [Konkurent]" |
   | Decision | Transactional | Case study, LP | "Jak [Firma] osiągnęła [wynik]" |

**Format wyjścia:**

```markdown
## Cluster 1: [Nazwa tematu]
Pillar: [Tytuł pillar page] — keyword: [X], volume: [Y]

| # | Tytuł | Keyword | Volume | Intent | Priorytet |
|---|-------|---------|--------|--------|-----------|
| 1 | [Tytuł] | [kw] | [vol] | info | P1 |
| 2 | [Tytuł] | [kw] | [vol] | comm | P2 |

Linki wewnętrzne: Pillar ↔ wszystkie supporting, supporting → /features/[X], → /pricing
```

### Faza 3: Content Calendar

Generuj kalendarz na wybrany okres (domyślnie: kwartał).

**Reguły priorytyzacji:**

| Priorytet | Kryterium | Częstotliwość |
|-----------|-----------|---------------|
| P1 — Quick wins | Low difficulty + high intent keywords | Tydzień 1-2 |
| P2 — Foundations | Pillar pages dla top 3 clusterów | Miesiąc 1 |
| P3 — Growth | Supporting articles + comparisons | Miesiąc 2-3 |
| P4 — Authority | Thought leadership, data-driven posts | Ongoing |

**Realistic pace for solo developer/founder:**
- **Minimum:** 2 artykuły/miesiąc (1 pillar + 1 supporting)
- **Optimum:** 4 artykuły/miesiąc (1 pillar + 3 supporting)
- **Aggressive:** 8 artykułów/miesiąc (wymaga AI assistance)

**Format kalendarza:**

```markdown
## Tydzień [N] — [daty]

| Dzień | Typ | Tytuł | Keyword | Cluster | Status |
|-------|-----|-------|---------|---------|--------|
| Pon | Pillar | [Tytuł] | [kw] | [cluster] | ⬜ Draft |
| Czw | Supporting | [Tytuł] | [kw] | [cluster] | ⬜ Draft |
```

### Faza 4: Content Gap Analysis

Porównanie z konkurencją:

1. **Weź** `competitor-analysis.md` → lista konkurentów
2. **Dla każdego konkurenta** sprawdź tematy ich bloga (sitemap, /blog/)
3. **Zmapuj** ich tematy na Twoje topic clusters
4. **Znajdź luki:**
   - **My mamy, oni nie** → wzmocnij (Twoja przewaga)
   - **Oni mają, my nie** → oceń czy warto pisać
   - **Nikt nie ma** → opportunity (jeśli volume jest)

**Format:**

```markdown
## Content Gap Matrix

| Temat / Keyword | My | Konkurent A | Konkurent B | Akcja |
|-----------------|-----|-------------|-------------|-------|
| [keyword 1] | ✅ | ❌ | ✅ | Wzmocnij |
| [keyword 2] | ❌ | ✅ | ✅ | Napisz P2 |
| [keyword 3] | ❌ | ❌ | ❌ | Opportunity! |
```

## Plik wyjściowy

Zapisz plan w `docs/marketing/content-strategy.md` lub `docs/CONTENT_STRATEGY.md`.

Struktura:

```markdown
# Content Strategy — [Produkt]
Data: [YYYY-MM-DD] | Okres: [Q1 2026]

## Executive Summary
[3-5 zdań: cel, podejście, oczekiwane rezultaty]

## Audyt treści
[Wyniki fazy 1]

## Topic Clusters
[Wyniki fazy 2]

## Content Calendar
[Wyniki fazy 3]

## Gap Analysis
[Wyniki fazy 4]

## KPI i metryki
| Metryka | Cel (3 mies.) | Cel (6 mies.) |
|---------|--------------|--------------|
| Organic traffic | +50% | +150% |
| Blog posts published | 12 | 30 |
| Keywords w top 10 | 5 | 15 |
| Signup from blog | 10/mies. | 30/mies. |

## Następne kroki
1. [Konkretna akcja 1]
2. [Konkretna akcja 2]
```

## Cross-references

- `product-marketing-context` — dostarcza pliki fundamentalne (keywords, competitors, features)
- `content` — pisanie artykułów wg strategii
- `seo` — walidacja SEO artykułów
- `programmatic-seo` (planowany) — SEO at scale na bazie clusterów
- `image-generator` — grafiki do artykułów

## Pułapki

- **Nie planuj więcej niż wykonasz** — solo developer = max 4 artykuły/mies. Lepiej 2 solidne niż 8 byle jakich
- **Pillar first** — zawsze zacznij od pillar page, potem supporting. Odwrotnie = brak struktury
- **Intent > volume** — keyword "jak [coś]" z 500/mies. konwertuje lepiej niż generic z 5000/mies.
- **Aktualizuj istniejące** — odświeżenie starego artykułu daje szybsze wyniki niż nowy post
- **Nie ignoruj competitor gaps** — jeśli wszyscy konkurenci piszą o temacie X a Ty nie, to sygnał
