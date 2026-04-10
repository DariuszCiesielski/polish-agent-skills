---
name: discovery-call
description: >
  Przygotowanie i prowadzenie rozmów discovery (SPIN, MEDDIC, Gap Selling).
  Skrypt, pytania, notatki, next steps. Triggery: "discovery call", "rozmowa sprzedażowa",
  "przygotuj do rozmowy", "SPIN selling", "MEDDIC", "gap selling",
  "pytania na spotkanie", "jak prowadzić demo", "sales call prep".
---

# Discovery Call — Przygotowanie i prowadzenie rozmów sprzedażowych

Przygotowuje skrypt, pytania i strukturę rozmowy discovery z potencjalnym klientem SaaS. 3 frameworki: SPIN, MEDDIC, Gap Selling.

## Kiedy używać

- Masz umówione spotkanie z potencjalnym klientem
- Chcesz przygotować pytania discovery
- Po rozmowie — chcesz ustrukturyzować notatki i next steps
- Użytkownik mówi: "przygotuj do rozmowy", "discovery call", "SPIN"

## Zależności

- **Wymagane:** `sales-context` → `icp-sales.md`, `objections.md`, `competitive-battle-cards.md`
- **Opcjonalne:** `cold-email` → kontekst wcześniejszej korespondencji

## Frameworki

### SPIN Selling (Neil Rackham)
**Najlepszy dla:** SaaS B2B, złożone decyzje, wielu stakeholderów

| Faza | Cel | Przykłady pytań |
|------|-----|-----------------|
| **S**ituation | Zrozum obecną sytuację | "Jak teraz zarządzacie [procesem]?" |
| **P**roblem | Odkryj problemy | "Co jest największym wyzwaniem przy [procesie]?" |
| **I**mplication | Pokaż konsekwencje | "Co się dzieje gdy [problem] nie jest rozwiązany?" |
| **N**eed-payoff | Niech klient sam zobaczy wartość | "Gdyby [problem] zniknął, co by się zmieniło?" |

**Reguła:** 80% słucha, 20% mówi. Pytania > prezentacja.

### MEDDIC
**Najlepszy dla:** Enterprise, długie cykle, formalne procesy zakupowe

| Element | Pytanie kwalifikujące |
|---------|----------------------|
| **M**etrics | "Jak mierzycie sukces w tym obszarze? Jakie KPI?" |
| **E**conomic Buyer | "Kto podejmuje finalną decyzję budżetową?" |
| **D**ecision criteria | "Jakie kryteria musicie spełnić przy wyborze narzędzia?" |
| **D**ecision process | "Jak wygląda proces decyzyjny? Kto jeszcze jest zaangażowany?" |
| **I**dentify pain | "Jaki jest koszt obecnego problemu? Ile Was to kosztuje?" |
| **C**hampion | "Kto w organizacji jest najbardziej zainteresowany zmianą?" |

### Gap Selling (Keenan)
**Najlepszy dla:** SaaS SMB, szybkie cykle, 1-2 decision makers

```
Current State → Problem → Impact → Future State → GAP = Twój produkt
```

| Faza | Pytania |
|------|---------|
| Current State | "Opowiedz mi jak to wygląda dziś. Co robicie krok po kroku?" |
| Problem | "Co nie działa? Gdzie tracicie czas/pieniądze?" |
| Impact | "Ile to kosztuje? (czas, pieniądze, frustracja, klienci)" |
| Future State | "Jak powinno wyglądać idealnie? Co by się zmieniło?" |
| GAP | "Różnica między tym co macie a tym co chcecie = to rozwiązujemy" |

## Struktura rozmowy (30 min)

### Minuta 0-3: Otwarcie
```
"Cześć [Imię], dzięki za czas. Plan na dziś:
1. Chcę zrozumieć Waszą sytuację (10 min)
2. Pokażę jak możemy pomóc (10 min)
3. Ustalimy next steps (5 min)
Czy jest coś co chcesz dodać do agendy?"
```

### Minuta 3-15: Discovery (SPIN/Gap)
Pytania w kolejności — od ogólnych do konkretnych:

1. **Kontekst:** "Opowiedz o swoim zespole / firmie / procesie"
2. **Narzędzia:** "Z czego korzystacie teraz? Co działa, co nie?"
3. **Problem:** "Gdybyś mógł zmienić jedną rzecz w [procesie], co by to było?"
4. **Impact:** "Ile czasu/pieniędzy tracicie na [problem] miesięcznie?"
5. **Próby:** "Czy próbowaliście to rozwiązać? Co nie zadziałało?"
6. **Timeline:** "Jak pilne to jest? Czy jest deadline?"
7. **Decision:** "Kto jeszcze byłby zaangażowany w decyzję?"

### Minuta 15-25: Demo / Rozwiązanie
**NIE pokazuj wszystkiego.** Pokaż TYLKO to co adresuje ich ból.

```
"Na podstawie tego co powiedziałeś, pokażę Ci 2 rzeczy:
1. [Feature adresująca ból #1]
2. [Feature adresująca ból #2]"
```

**"Wow moment"** — znajdź jedną rzecz która wywołuje "o, to fajne":
- Szybkość (zrobiłem w 2 kliknięcia to co u Was trwa 2 godziny)
- Automatyzacja (to robi się samo, nie musisz pamiętać)
- Insight (dane których nie mieliście, a są cenne)

### Minuta 25-30: Next steps
```
"Podsumowując: Wasz główny problem to [ból].
[Produkt] rozwiązuje to przez [rozwiązanie].

Proponuję:
- [Opcja A]: Trial 14 dni, pomogę z setupem
- [Opcja B]: Prezentacja dla zespołu [data]
- [Opcja C]: Wyślę propozycję cenową

Co pasuje najbardziej?"
```

**ZAWSZE kończ z:**
1. Podsumowanie bólu (słowami klienta, nie Twoimi)
2. Konkretny next step z datą
3. Kto co robi (Ty: materiały, klient: feedback od szefa)

## Pre-call checklist

Przed każdą rozmową przygotuj:

- [ ] **Research prospekta:** LinkedIn, strona firmowa, ostatnie news
- [ ] **Hipoteza bólu:** Na podstawie ICP + branży — zgadnij 2-3 problemy
- [ ] **Personalizacja:** 1 rzecz specyficzna dla nich (post, hiring, funding)
- [ ] **Battle card:** Jeśli wiesz że używają konkurenta
- [ ] **Pytania:** 5-7 pytań SPIN/Gap gotowych
- [ ] **Demo path:** Który flow pokazać jeśli potwierdzą ból X
- [ ] **Objection prep:** Top 3 obiekcje dla tej persony/branży
- [ ] **CTA:** Co chcesz osiągnąć (trial? demo dla teamu? propozycja?)

## Post-call template

```markdown
## Notatki: [Firma] — Discovery Call [Data]

### Obecni
- [Imię, Tytuł] — [rola w decyzji: DM/User/Champion]

### Current state
- [Jak dziś robią X]
- [Narzędzia: Y, Z]

### Problem (słowami klienta)
- "[Dosłowny cytat opisujący ból]"
- Impact: [ile kosztuje — czas, pieniądze]

### Fit score: [1-5]
| Kryterium | Wynik |
|-----------|-------|
| ICP match | [1-5] |
| Ból potwierdzony | [1-5] |
| Budżet | [1-5] |
| Timeline | [1-5] |
| Decision maker access | [1-5] |

### Next steps
- [ ] [Kto]: [Co] do [Kiedy]
- [ ] [Kto]: [Co] do [Kiedy]

### Obiekcje do zaadresowania
- [Obiekcja 1] → [Plan odpowiedzi]
```

## Cross-references

- `sales-context` → ICP, objections, battle cards, sales process
- `cold-email` → kontekst wcześniejszej korespondencji
- `marketing-psychology` → techniki perswazji w rozmowie
- `voice-profile` → ton komunikacji

## Pułapki

- **Nie prezentuj bez discovery** — "Pokażę Wam produkt" bez pytań = strata czasu
- **Nie mów za dużo** — celem jest SŁUCHAĆ, nie sprzedawać
- **Nie pytaj o budżet na początku** — najpierw zbuduj wartość
- **Notuj dosłowne cytaty** — "tracę 4 godziny tygodniowo" > "mają problem z czasem"
- **Nie kończ bez next step** — "odezwę się" = nigdy. Ustal konkretną datę
- **Demo ≠ feature tour** — pokaż 2-3 rzeczy relevant do ich bólu, nie 15 funkcji
