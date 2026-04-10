# Core Web Vitals — Progi (aktualizacja: luty 2026)

## Metryki rankingowe

### LCP (Largest Contentful Paint) — ładowanie
| Zakres | Ocena |
|--------|-------|
| ≤ 2.5s | 🟢 Good |
| 2.5s – 4.0s | 🟡 Needs Improvement |
| > 4.0s | 🔴 Poor |

**Subparts LCP:**
1. **TTFB** (Time to First Byte) — czas serwera
2. **Resource Load Delay** — opóźnienie przed ładowaniem zasobu
3. **Resource Load Time** — czas ładowania zasobu (np. obrazu)
4. **Element Render Delay** — czas renderowania elementu

Optymalizacja: identyfikuj który subpart jest bottleneckiem.

### INP (Interaction to Next Paint) — interaktywność
| Zakres | Ocena |
|--------|-------|
| ≤ 200ms | 🟢 Good |
| 200ms – 500ms | 🟡 Needs Improvement |
| > 500ms | 🔴 Poor |

**WAŻNE:** INP zastąpiło FID (First Input Delay) jako metrykę rankingową:
- 12 marca 2024: INP staje się oficjalną metryką CWV
- 9 września 2024: FID całkowicie usunięte z raportów CrUX
- **NIGDY nie raportuj FID** — jest nieaktualne

### CLS (Cumulative Layout Shift) — stabilność wizualna
| Zakres | Ocena |
|--------|-------|
| ≤ 0.10 | 🟢 Good |
| 0.10 – 0.25 | 🟡 Needs Improvement |
| > 0.25 | 🔴 Poor |

## Źródło danych

- Google używa **75. percentyla** danych realnych użytkowników z CrUX (Chrome User Experience Report)
- Laboratoryjne narzędzia (Lighthouse, PageSpeed Insights) mogą się różnić od field data
- **Field data > Lab data** dla celów rankingowych

## Soft Navigations API (eksperymentalne)

- Chrome 139+ origin trial (lipiec 2025)
- Pierwszy krok do mierzenia CWV w SPA (Single Page Applications)
- Wykrywa zmiany URL bez pełnego przeładowania strony
- **Status:** brak wpływu na ranking (jeszcze), ale warto monitorować
- Implikacja: SPA nadal mają gorszą mierzalność CWV niż MPA

## Scoring CWV w audycie

| Metryka | Waga w kategorii Performance |
|---------|------------------------------|
| LCP | 40% |
| INP | 35% |
| CLS | 25% |

**Ocena ogólna Performance:**
- Wszystkie 3 metryki 🟢 → score ≥ 90
- Mix 🟢 i 🟡 → score 60-89
- Jakiekolwiek 🔴 → score < 60
- Brak danych CrUX → score = N/A (zanotuj w raporcie, użyj lab data z zastrzeżeniem)
