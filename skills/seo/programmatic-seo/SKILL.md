---
name: programmatic-seo
description: >
  SEO at scale — generowanie setek stron z szablonów per keyword pattern.
  "[usługa] + [miasto]", "[produkt] vs [produkt]", "[narzędzie] dla [branży]".
  Triggery: "programmatic SEO", "SEO at scale", "template pages", "generuj strony SEO",
  "strony lokalne", "miasto+usługa", "vs pages", "porównania", "masowe strony".
---

# Programmatic SEO — Template Pages at Scale

Generowanie setek/tysięcy stron z szablonów pod long-tail keywords. Sprawdzona taktyka SaaS: Zapier (integrations pages), Wise (currency pages), Nomadlist (city pages).

## Kiedy używać

- Produkt ma powtarzalny wzorzec keywords (usługa×miasto, narzędzie×branża)
- Chcesz pokryć setki long-tail keywords jednym template
- Masz dane strukturalne (baza miast, lista integracji, katalog branż)
- Użytkownik mówi: "programmatic SEO", "strony lokalne", "masowe strony"

## Zależności

- `product-marketing-context` → `target-keywords.md` (keyword patterns)
- `seo` → walidacja generowanych stron
- `content-strategy` → topic clusters jako źródło patterns
- `schema-markup` → schema per generated page

## Wzorce (patterns)

### Pattern 1: [Usługa] + [Miasto]
**Dla:** lokalne usługi, agencje, SaaS z local focus
```
/uslugi/seo-pozycjonowanie-warszawa
/uslugi/seo-pozycjonowanie-krakow
/uslugi/seo-pozycjonowanie-wroclaw
```
**Dane:** lista miast × lista usług
**Template:** H1 z miastem, lokalne social proof, mapa, CTA regionalne

### Pattern 2: [Produkt] vs [Konkurent]
**Dla:** SaaS z rozpoznawalną konkurencją
```
/porownania/produkt-vs-mailchimp
/porownania/produkt-vs-sendinblue
/porownania/produkt-vs-convertkit
```
**Dane:** lista konkurentów × kryteria porównania
**Template:** tabela porównawcza, feature-by-feature, verdict

### Pattern 3: [Narzędzie] dla [Branży]
**Dla:** SaaS horizontal z vertical use cases
```
/rozwiazania/crm-dla-agencji-marketingowych
/rozwiazania/crm-dla-biur-nieruchomosci
/rozwiazania/crm-dla-firm-szkoleniowych
```
**Dane:** lista branż × feature highlights per branża
**Template:** branżowe case study, specific features, branżowy jargon

### Pattern 4: [Integracja] + [Produkt]
**Dla:** SaaS z wieloma integracjami
```
/integracje/slack
/integracje/google-sheets
/integracje/zapier
```
**Dane:** lista integracji × opis workflow
**Template:** jak połączyć, use cases, setup guide

### Pattern 5: Glossary / Słownik
**Dla:** branże z dużo terminologii
```
/slownik/roi-return-on-investment
/slownik/cac-customer-acquisition-cost
/slownik/ltv-lifetime-value
```
**Dane:** lista terminów × definicje
**Template:** definicja, formuła, przykład, powiązane terminy

## Implementacja w Next.js

### Krok 1: Przygotuj dane

```typescript
// src/data/cities.ts
export const cities = [
  { name: "Warszawa", slug: "warszawa", population: 1794000, region: "mazowieckie" },
  { name: "Kraków", slug: "krakow", population: 780000, region: "małopolskie" },
  // ...
];

// src/data/services.ts
export const services = [
  { name: "Pozycjonowanie SEO", slug: "seo-pozycjonowanie", description: "..." },
  { name: "Tworzenie stron www", slug: "tworzenie-stron", description: "..." },
];
```

### Krok 2: Dynamic route

```typescript
// src/app/uslugi/[service]-[city]/page.tsx
import { cities } from "@/data/cities";
import { services } from "@/data/services";

export function generateStaticParams() {
  return cities.flatMap(city =>
    services.map(service => ({
      "service-city": `${service.slug}-${city.slug}`,
    }))
  );
}

export function generateMetadata({ params }) {
  const { city, service } = parseParams(params);
  return {
    title: `${service.name} ${city.name} — [Firma] | Lokalni eksperci`,
    description: `${service.name} w ${city.name}. ${service.description} Sprawdź ofertę →`,
  };
}
```

### Krok 3: Template strony

Każda generated page MUSI mieć:
1. **Unikalny H1** z keyword + lokalizacja
2. **Min. 300 słów** unikalnej treści (nie tylko zmienione miasto)
3. **Lokalne social proof** (jeśli dostępne)
4. **Schema markup** (LocalBusiness lub Service)
5. **Internal links** do 3+ powiązanych stron
6. **CTA** dopasowane do kontekstu

### Krok 4: Anti-thin content

**Problem:** 100 stron z identyczną treścią i tylko zmienionym miastem = thin content → kara.

**Rozwiązanie — warstwy unikalności:**

| Warstwa | Opis | Min. % unikalnej treści |
|---------|------|------------------------|
| 1 — Variables | Miasto, region, dane lokalne | 10% |
| 2 — Conditional | Sekcje widoczne tylko dla wybranych miast/branż | 20% |
| 3 — Data-driven | Lokalne statystyki, ceny, dane demograficzne | 20% |
| 4 — AI-generated | Unikalne paragrafy per kombinacja (batch generate) | 30% |

**Cel:** min. 50% unikalnej treści per strona. Reszta to wspólny template.

## Quality gates

Przed publikacją sprawdź:

- [ ] Min. 300 słów per strona (500+ preferowane)
- [ ] Unikalny title i meta description per strona
- [ ] Min. 50% unikalnej treści (nie tylko zmienne)
- [ ] Schema markup (BreadcrumbList + typ strony)
- [ ] Canonical URL ustawiony poprawnie
- [ ] Internal links do 3+ stron
- [ ] Sitemap zawiera wszystkie generated pages
- [ ] robots.txt nie blokuje generated pages
- [ ] Brak duplicate content (sprawdź sample 10 stron)

## Skalowanie

| Skala | Stron | Podejście |
|-------|-------|-----------|
| Mała | 10-50 | Ręczne dane + template |
| Średnia | 50-500 | CSV/JSON + generateStaticParams |
| Duża | 500-5000 | Baza danych + ISR (revalidate) |
| Mega | 5000+ | On-demand ISR + sitemap index |

## Cross-references

- `seo` → walidacja generated pages
- `content-strategy` → topic clusters → keyword patterns
- `schema-markup` → schema per generated page
- `internal-linker` → linking strategy dla generated pages
- `product-marketing-context` → `target-keywords.md` (źródło patterns)

## Pułapki

- **Thin content** — Google karze strony z <50% unikalnej treści. Nie generuj 1000 stron z jednym zmienionym słowem
- **Canonicalization** — każda generated page ma swój canonical. Nie wskazuj na wspólną stronę
- **Sitemap** — przy 5000+ stronach użyj sitemap index (max 50k URL per sitemap)
- **noindex test pages** — nie indeksuj stron z placeholder data
- **Incremental** — zacznij od 10-20 stron, sprawdź czy Google indeksuje, potem skaluj
