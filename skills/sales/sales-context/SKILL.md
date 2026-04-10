---
name: sales-context
description: >
  Fundament sprzedaży SaaS: ICP, value proposition, proof points, objection handling,
  competitive positioning. Generuje docs/sales/ z 6 plikami. Triggery: "kontekst sprzedażowy",
  "sales context", "ICP sprzedażowy", "value proposition", "objection handling",
  "jak sprzedawać", "przygotuj materiały sprzedażowe", "sales playbook",
  "competitive positioning", "proof points".
---

# Sales Context — Fundament sprzedaży SaaS

Generuje zestaw 6 plików sprzedażowych per projekt SaaS. Fundament dla cold email, discovery call, demo i negocjacji. Odpowiednik `product-marketing-context` ale dla sprzedaży bezpośredniej.

## Kiedy używać

- Przygotowujesz się do sprzedaży SaaS (outreach, demo, rozmowy)
- Brak spójnych materiałów sprzedażowych
- Przed kampanią cold email / cold call
- Użytkownik mówi: "jak sprzedawać", "sales playbook", "przygotuj do sprzedaży"

## Zależności

- **Wymagane:** `/docs/PRODUCT.md`, `/docs/ICP.md` (lub `product-marketing-context` → `features.md`, `competitor-analysis.md`)
- **Opcjonalne:** `voice-profile` → ton sprzedawcy, `pricing-strategy` → model cenowy

## Proces

### Krok 1: Zbierz dane

Przeczytaj istniejący kontekst (PRODUCT.md, ICP.md, features.md). Zapytaj o brakujące:

1. **Kim jest kupujący?** (rola, tytuł, wielkość firmy, branża)
2. **Jaki problem rozwiązujesz?** (3 główne bóle)
3. **Dlaczego teraz?** (trigger event — co sprawia że szukają rozwiązania)
4. **Kto decyduje?** (decision maker vs user vs champion)
5. **Jaki budżet?** (range, model cenowy)
6. **Kto jest konkurencją?** (bezpośrednia i pośrednia — np. Excel, manual process)

### Krok 2: Wygeneruj 6 plików

Zapisz w `docs/sales/`:

#### 1. `icp-sales.md` — Ideal Customer Profile (sprzedażowy)

```markdown
# ICP — Profil idealnego klienta

## Firmografia
| Parametr | Idealny | Akceptowalny | Disqualify |
|----------|---------|-------------|------------|
| Wielkość | [X-Y pracowników] | [szerszy range] | [za mali/duzi] |
| Branża | [top 3 branże] | [powiązane] | [nieodpowiednie] |
| Przychód | [range] | [szerszy] | [poniżej progu] |
| Lokalizacja | [PL / DACH / EU] | [global] | — |

## Persony kupujące
### Persona 1: [Tytuł] — Decision Maker
- **Ból:** [co go budzi w nocy]
- **Metryka sukcesu:** [KPI za który odpowiada]
- **Język:** [jak mówi o problemie — dosłowne frazy]
- **Gdzie szuka rozwiązań:** [LinkedIn, konferencje, polecenia]

### Persona 2: [Tytuł] — User / Champion
- **Ból:** [codzienna frustracja]
- **Metryka:** [co ułatwia mu pracę]
- **Język:** [frazy z codziennej pracy]

## Trigger events (sygnały zakupowe)
1. [Zmiana w firmie — nowy CTO, funding, merger]
2. [Problem operacyjny — skalowanie, błędy, koszty]
3. [Deadline zewnętrzny — regulacje, audyt, kontrakt]

## Disqualification criteria
- [Za mały budżet / za mała skala]
- [Brak decision makera w pipeline]
- [Konkurencyjny kontrakt do [data]]
```

#### 2. `value-prop.md` — Value Proposition Canvas

```markdown
# Value Proposition — [Produkt]

## Elevator Pitch (30 sekund)
"[Produkt] pomaga [persona] w [problemie] poprzez [rozwiązanie],
dzięki czemu [mierzalny rezultat] w [timeframe]."

## Value Matrix
| Persona | Ból | Rozwiązanie | Mierzalny wynik |
|---------|-----|------------|-----------------|
| [DM] | [ból 1] | [feature/benefit] | [ROI/metryka] |
| [User] | [ból 2] | [feature/benefit] | [oszczędność czasu] |

## 3 Pillars (główne filary wartości)
1. **[Pillar 1]** — [1 zdanie dlaczego to ważne]
2. **[Pillar 2]** — [1 zdanie]
3. **[Pillar 3]** — [1 zdanie]

## "Dlaczego my" vs "Dlaczego teraz" vs "Dlaczego w ogóle"
| Pytanie | Odpowiedź |
|---------|-----------|
| Dlaczego w ogóle? | [Koszt problemu — ile tracą robiąc po staremu] |
| Dlaczego teraz? | [Trigger + urgency — co się zmieni jeśli nie teraz] |
| Dlaczego my? | [Unikalna przewaga vs konkurencja i status quo] |
```

#### 3. `proof-points.md` — Dowody i social proof

```markdown
# Proof Points — [Produkt]

## Case studies
| Klient | Branża | Problem | Wynik | Quote |
|--------|--------|---------|-------|-------|
| [Firma A] | [branża] | [ból] | [metryka: +X% / -Y godzin] | "..." |

## Metryki produktu
- [X] aktywnych użytkowników / firm
- [Y]% retention rate
- [Z] integracji / funkcji

## Testimoniale (gotowe do użycia)
1. "[Quote]" — [Imię, Tytuł, Firma]
2. "[Quote]" — [Imię, Tytuł, Firma]

## Third-party validation
- [Nagrody, certyfikaty, rankingi]
- [Media mentions, recenzje]
- [Partnerstwa technologiczne]

## ROI Calculator inputs
| Parametr | Typowa wartość | Źródło |
|----------|---------------|--------|
| Czas zaoszczędzony/tydzień | [X]h | [case study / ankieta] |
| Koszt godziny pracy | [Y] zł | [średnia rynkowa] |
| ROI miesięczny | [Z] zł | [kalkulacja] |
```

#### 4. `objections.md` — Obsługa obiekcji

```markdown
# Objection Handling — [Produkt]

## Framework: Acknowledge → Reframe → Respond → Confirm

### Cena
**"Za drogo"**
- Acknowledge: "Rozumiem, budżet jest ważny."
- Reframe: "Porównajmy z kosztem obecnego procesu..."
- Respond: "[ROI kalkulacja — ile tracą bez rozwiązania]"
- Confirm: "Czy gdyby ROI był jasny, cena byłaby OK?"

### Timing
**"Nie teraz, może za kwartał"**
- A: "Rozumiem, timing jest kluczowy."
- R: "Co się zmieni za kwartał? Problem nie czeka."
- R: "[Koszt opóźnienia — ile tracą przez X miesięcy]"
- C: "Co musiałoby się stać, żeby teraz był dobry moment?"

### Konkurencja
**"Używamy już [Konkurent]"**
- A: "Znam [Konkurent], to solidne narzędzie."
- R: "Większość naszych klientów przeszła z [Konkurent]."
- R: "[Konkretna przewaga #1, #2 + case study migracji]"
- C: "Czy te różnice są istotne dla Waszego workflow?"

### Status quo
**"Robimy to w Excelu / ręcznie"**
- A: "Wiele firm tak zaczyna."
- R: "Przy [X pracownikach/klientach] to przestaje skalować."
- R: "[Punkt przegięcia — przy jakiej skali manual = kosztowny]"
- C: "Ile godzin tygodniowo poświęcacie na ten proces?"

### Trust
**"Nie znamy Was"**
- A: "To zrozumiałe, zaufanie trzeba zbudować."
- R: "[Social proof — klienci, case studies, czas na rynku]"
- R: "[Niskie ryzyko — free trial, gwarancja, brak lockin]"
- C: "Co pomogłoby Wam poczuć się pewniej?"

### Decision maker
**"Muszę porozmawiać z szefem"**
- A: "Oczywiście, to ważna decyzja."
- R: "Chętnie przygotuję materiały dla [szefa]."
- R: "[1-pager z ROI, demo recording, porównanie]"
- C: "Kiedy będziecie to omawiać? Czy mogę coś przygotować?"
```

#### 5. `competitive-battle-cards.md` — Karty bitewne

```markdown
# Battle Cards — [Produkt] vs Konkurencja

## vs [Konkurent A]
| Aspekt | My | Oni | Talking point |
|--------|-----|-----|---------------|
| Cena | [X] zł | [Y] zł | "[Uzasadnienie wartości]" |
| Feature [kluczowa] | ✓ | ✗ | "[Dlaczego to ważne]" |
| Onboarding | [X] min | [Y] dni | "[Szybkość time-to-value]" |
| Support | [typ] | [typ] | "[Różnica]" |

**Kiedy wygrywamy:** [Scenariusz idealny]
**Kiedy przegrywamy:** [Scenariusz trudny]
**Landmines (pytania do zadania):** "[Pytanie które eksponuje słabość konkurenta]"

## vs Status Quo (Excel / manual)
**Argument:** "Do [X] [jednostka] manual działa. Powyżej = [konkretny problem]."
**Punkt przegięcia:** [X klientów / Y transakcji / Z pracowników]
**ROI:** "[Koszt manualny] - [koszt narzędzia] = [oszczędność]"
```

#### 6. `sales-process.md` — Proces sprzedaży

```markdown
# Sales Process — [Produkt]

## Pipeline stages
| Stage | Cel | Akcja | Exit criteria |
|-------|-----|-------|---------------|
| 1. Lead | Qualify | Cold email / inbound | Odpowiedź + fit ICP |
| 2. Discovery | Understand | Discovery call (30 min) | Ból potwierdzony + budżet |
| 3. Demo | Show value | Demo dopasowane do bólu | "Wow moment" + next step |
| 4. Proposal | Close | Oferta + ROI | Decyzja tak/nie/later |
| 5. Onboarding | Retain | Setup + quick win | Wartość w <7 dni |

## Cadence (follow-up schedule)
| Dzień | Kanał | Treść |
|-------|-------|-------|
| 0 | Email | Initial outreach |
| 3 | Email | Follow-up z wartością (case study) |
| 7 | LinkedIn | Connection + komentarz |
| 10 | Email | Break-up email ("rozumiem jeśli nie teraz") |
| 30 | Email | Re-engagement (nowa funkcja / case study) |

## Metryki
| Metryka | Cel | Jak mierzyć |
|---------|-----|------------|
| Response rate | >15% | Odpowiedzi / wysłane |
| Meeting booked | >5% | Spotkania / wysłane |
| Demo → Close | >25% | Zamknięte / demo |
| Time to close | <30 dni | Avg. dni lead → close |
```

## Cross-references

- `cold-email` → używa ICP, value prop, proof points do personalizacji
- `discovery-call` → używa objections, battle cards, process
- `copywriting` → messaging z value-prop
- `marketing-strategy-methodology` → strategia nadrzędna
- `product-value-extractor` → Features → Benefits → Outcomes
- `lead-generator` → źródło leadów do pipeline

## Pułapki

- **Nie sprzedawaj features** — sprzedawaj wyniki (ROI, oszczędność czasu, mniej błędów)
- **ICP ≠ "wszyscy"** — im węższy ICP, tym lepsze konwersje
- **Objections ≠ obiekcje** — to pytania w przebraniu. Odpowiadaj, nie walcz
- **Battle cards to wewnętrzny doc** — nigdy nie wysyłaj klientowi porównania z konkurencją
- **Aktualizuj proof points** — stare case studies tracą siłę
