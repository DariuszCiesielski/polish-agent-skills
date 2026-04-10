---
name: internal-linker
description: >
  Optymalizacja linków wewnętrznych — link equity distribution, topic cluster linking,
  cannibalization prevention, orphan page detection. Triggery: "linki wewnętrzne",
  "internal linking", "link equity", "orphan pages", "cannibalization",
  "zoptymalizuj linkowanie", "mapa linków", "internal link audit".
---

# Internal Linker — Link Equity & Topic Cluster Optimization

Audytuje i optymalizuje strukturę linków wewnętrznych w projekcie. Wykrywa orphan pages, cannibalization, złe anchor texty i nierównomierne rozkłady link equity.

## Kiedy używać

- Strona ma >20 podstron i brak strategii linkowania
- Blog rośnie ale artykuły nie linkują do siebie
- Nowe strony nie dostają organic traffic (orphan pages)
- Podejrzenie keyword cannibalization
- Użytkownik mówi: "linki wewnętrzne", "orphan pages", "internal link audit"

## Komendy

```
/internal-linker audit          — pełny audyt linków wewnętrznych
/internal-linker orphans        — wykryj orphan pages (0 linków przychodzących)
/internal-linker cannibalization — wykryj keyword cannibalization
/internal-linker suggest <url>  — zaproponuj linki dla konkretnej strony
/internal-linker map            — wygeneruj mapę linków (visual)
```

## Proces audytu

### Krok 1: Skan struktury

Przeskanuj projekt i zbuduj graf linków:

```
Dla każdej strony (page.tsx, post.md, etc.):
  1. URL strony
  2. H1 / title
  3. Target keyword (z meta/frontmatter)
  4. Linki wychodzące (internal) — URL + anchor text
  5. Word count
```

### Krok 2: Zbuduj macierz

```markdown
| Strona | Linki IN | Linki OUT | Keyword | Orphan? |
|--------|----------|-----------|---------|---------|
| / | 15 | 8 | [brand] | — |
| /blog/art-1 | 0 | 2 | [kw1] | ⚠️ TAK |
| /features | 5 | 3 | [kw2] | — |
| /pricing | 3 | 1 | pricing | — |
```

### Krok 3: Diagnoza

#### A. Orphan Pages (0 linków IN)
**Problem:** Google nie może znaleźć strony jeśli żaden link do niej nie prowadzi.
**Fix:** Dodaj min. 3 linki z powiązanych stron.

#### B. Link Equity Imbalance
**Problem:** Homepage ma 50 linków IN, blog post 0.
**Fix:** Linkuj z high-authority pages do ważnych stron docelowych.

**Reguła dystrybucji:**
```
Homepage → /features, /pricing, /blog (top 3 artykuły)
Pillar page → wszystkie supporting articles
Supporting article → pillar + 2 inne supporting + /features lub /pricing
Feature page → case study + blog post o feature + /pricing
```

#### C. Keyword Cannibalization
**Problem:** 2+ strony targetują ten sam keyword → Google nie wie którą wybrać.
**Wykrywanie:**
```
Dla każdego keyword:
  Jeśli >1 strona ma go w H1/title → CANNIBALIZATION
```

**Fix opcje:**
1. **Merge** — połącz 2 strony w jedną (301 redirect ze słabszej)
2. **Differentiate** — zmień keyword jednej strony na bardziej specyficzny
3. **Canonical** — wskaż canonical na silniejszą stronę

#### D. Anchor Text Issues
**Problem:** "kliknij tutaj", "więcej", "link" — zero wartości SEO.

**Reguły anchor text:**
| Dobrze ✓ | Źle ✗ |
|----------|-------|
| "strategia content marketing" | "kliknij tutaj" |
| "cennik [Produktu]" | "więcej" |
| "jak zoptymalizować SEO" | "ten artykuł" |

**Zasada:** Anchor text = keyword docelowej strony (naturalnie, nie stuffing).

### Krok 4: Rekomendacje

Dla każdego problemu wygeneruj konkretną akcję:

```markdown
## Rekomendacje

### Orphan Pages (3 znalezione)
1. `/blog/artykul-o-seo` — dodaj link z:
   - `/blog/pillar-seo` (anchor: "optymalizacja SEO")
   - `/features/seo-tools` (anchor: "nasze narzędzia SEO")
   - `/` homepage sidebar/footer

### Cannibalization (1 para)
- `/blog/crm-guide` i `/features/crm` oba targetują "CRM"
  → Zmień `/blog/crm-guide` keyword na "jak wybrać CRM dla małej firmy"

### Brakujące linki (5 sugestii)
| Z | Do | Anchor text |
|---|-----|------------|
| /blog/art-1 | /features/X | "funkcja X" |
| /blog/art-2 | /pricing | "sprawdź cennik" |
```

## Reguły linkowania wg typu strony

### Homepage
- Linkuj do: /features, /pricing, /blog (top 3), /about
- NIE linkuj do: każdego blog posta (rozwadnia equity)

### Pillar Page (blog)
- Linkuj do: WSZYSTKICH supporting articles w clusterze
- Linkuj do: /features (relevant), /pricing
- Supporting articles ZAWSZE linkują z powrotem do pillar

### Supporting Article (blog)
- Linkuj do: pillar page (obowiązkowo)
- Linkuj do: 2-3 inne supporting z tego samego clustera
- Linkuj do: 1 strona komercyjna (/features, /pricing)
- Min. 3 linki wewnętrzne, max 10

### Feature Page
- Linkuj do: case study, blog posts o feature, /pricing
- Linkuj do: powiązane feature pages

### Pricing Page
- Linkuj do: /features (per plan), FAQ, /contact
- NIE linkuj do: zewnętrznych konkurentów

## Format raportu

```markdown
# Internal Link Audit — [Domena]
Data: [YYYY-MM-DD]

## Podsumowanie
- Stron przeskanowanych: X
- Orphan pages: Y (⚠️ jeśli >0)
- Cannibalization: Z par
- Avg. linków IN per strona: N
- Avg. linków OUT per strona: M

## Orphan Pages
[Lista z fix suggestions]

## Cannibalization
[Lista par z fix suggestions]

## Top rekomendacje (posortowane wg impact)
1. [Akcja 1]
2. [Akcja 2]
3. [Akcja 3]

## Mapa linków
[ASCII/Mermaid diagram struktury]
```

## Cross-references

- `seo` → `/seo page` sprawdza linki wewnętrzne per strona
- `content-strategy` → topic clusters definiują strukturę linkowania
- `product-marketing-context` → `internal-links-map.md` jako cel
- `programmatic-seo` → generated pages potrzebują strategii linkowania

## Pułapki

- **Nie linkuj do wszystkiego ze wszystkiego** — rozmywa link equity
- **Nie używaj `nofollow` na linkach wewnętrznych** — marnujesz equity
- **Anchor text variation** — nie zawsze dokładnie ten sam keyword, Google może uznać za manipulację
- **Aktualizuj regularnie** — nowe artykuły = nowe linki do dodania do starych stron
- **Footer links** — linki w footerze mają mniejszą wagę niż in-content links
