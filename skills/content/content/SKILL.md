---
name: content
description: Pipeline contentowy — pisanie artykułów SEO, briefy, kalendarze, analiza jakości, AI detection. Polskie persony, dual Google+AI optimization, answer-first formatting. Używaj przy "napisz artykuł", "content plan", "brief contentowy", "kalendarz publikacji", "analiza treści", "przepisz artykuł pod SEO", "sprawdź jakość tekstu", "blog post", "content marketing". Auto-aktywacja przy pracy z plikami .md/.mdx w folderze blog/content/posts. NIE używaj do SEO technicznego — od tego jest skill seo.
---

# Content Pipeline Manager

Skill do tworzenia, analizowania i optymalizacji treści pod Google Search i AI search engines. Zoptymalizowany pod polski rynek.

## Kiedy używać

- Pisanie artykułów blogowych (SEO + AI-ready)
- Briefy contentowe z analizą SERP
- Przepisywanie istniejących artykułów pod SEO
- Analiza jakości treści + AI detection score
- Kalendarze publikacji
- Batch generowanie contentu

## Komendy

```
/content write <temat>            — pełny artykuł z SEO (PL)
/content brief <keyword>          — brief contentowy z analizą SERP
/content rewrite <url>            — przepisz pod SEO + anti-AI detection
/content analyze <url|plik>       — analiza jakości + scoring 0-100
/content calendar <niche> [N]     — kalendarz publikacji na N dni (domyślnie 30)
/content persona [list|create]    — zarządzanie personami pisarskimi
/content outline <temat>          — zarys artykułu bez pisania
/content schema <url|plik>        — generuj BlogPosting/Article JSON-LD
```

## Zbieranie briefu — wzorzec sekwencyjny

Gdy użytkownik nie podał pełnych informacji, zbieraj input **jedno pytanie na raz**. NIE zadawaj 3-4 pytań w jednej wiadomości — użytkownik odpowie niekompletnie.

### Kolejność pytań

1. "Masz gotowy tekst źródłowy (transkrypt, notatki, draft)?" → Czekaj na odpowiedź.
   - **Jeśli tak:** Wyciągnij temat, kluczowe punkty, ton. Pokaż outline do zatwierdzenia.
   - **Jeśli nie:** Kontynuuj pytania poniżej.
2. "Jaki jest temat i główna fraza kluczowa?" → Czekaj.
3. "Kto jest docelowym czytelnikiem? (rola, poziom wiedzy)" → Czekaj.
4. "Jaki ton — formalny, konwersacyjny, ekspercki?" → Czekaj. (Domyślnie: "Profesjonalny PL")
5. "Jakieś konkretne punkty/dane, które muszą się znaleźć?" → Czekaj.

Dopiero po zebraniu wszystkich inputów przejdź do pisania/outlinowania.

**Kiedy pomijać:** Gdy użytkownik podał kompletny brief lub powiedział "po prostu napisz".

---

## Instrukcje

### /content write <temat> — Pełny artykuł

1. **Rozpoznaj typ artykułu** (auto lub user override):
   - "Jak..." / "How to..." → `templates/how-to.md`
   - "Top X..." / "Najlepsze..." → `templates/listicle.md`
   - "X vs Y" / "porównanie" → `templates/comparison.md`
   - Case study / rezultaty → `templates/case-study.md`
   - Default → `templates/how-to.md`

2. **Załaduj aktywną personę** z `references/personas.md` (domyślnie: "Profesjonalny PL")

3. **Research** (jeśli dostępne Firecrawl/WebSearch):
   - Przeszukaj SERP dla keyword
   - Zidentyfikuj top 5 wyników — czego nie pokrywają?
   - Znajdź statystyki i źródła do cytowania

4. **Pisz wg szablonu** z zachowaniem:
   - **Answer-first formatting**: każdy H2 otwiera 40-60 słów z konkretną odpowiedzią i statystyką
   - **Citation capsules**: samodzielne fragmenty 120-180 słów gotowe do cytowania przez AI
   - **Burstiness**: celowa zmienność długości zdań (8-25 słów, nie uniformowe)
   - **Internal link zones**: `[LINK-WEWNĘTRZNY: anchor → opis celu]`

5. **Waliduj jakość** wg scoringu (patrz sekcja Scoring)

6. **Wygeneruj meta dane**:
   - Title tag (≤60 znaków, keyword na początku)
   - Meta description (≤160 znaków, z CTA)
   - Schema JSON-LD (BlogPosting lub Article)
   - Open Graph tags

### /content brief <keyword> — Brief contentowy

Wygeneruj brief dla copywritera zawierający:

1. **Keyword analysis** — główna fraza + 5-10 powiązanych
2. **SERP overview** — co jest w top 10, jakie formaty, content gaps
3. **Rekomendowany typ artykułu** i dlaczego
4. **Zarys H2/H3** — proponowana struktura
5. **Min. word count** — wg typu strony (patrz `references/content-rules.md`)
6. **Must-include** — statystyki, źródła, cytaty do użycia
7. **Internal linking** — sugestie linków wewnętrznych
8. **Persona** — jaka persona pisarska pasuje

### /content rewrite <url> — Przepisz pod SEO

1. Pobierz oryginalny artykuł (Firecrawl/WebFetch)
2. Przeanalizuj scoring (sekcja Scoring)
3. Zidentyfikuj słabe punkty
4. Przepisz z zachowaniem oryginalnego przekazu, ale:
   - Dodaj answer-first na każdym H2
   - Zwiększ burstiness (variance zdań)
   - Wyeliminuj frazy AI (patrz Pułapki)
   - Dodaj citation capsules
   - Popraw hierarchy H1→H2→H3
5. Porównaj scoring przed/po

### /content analyze <url|plik> — Analiza jakości

Oceń treść w 5 kategoriach (łącznie 0-100):

| Kategoria | Max pkt | Co sprawdza |
|-----------|---------|------------|
| Content Quality | 30 | Głębia, czytelność, oryginalność, burstiness |
| SEO Optimization | 25 | Title, meta, H hierarchy, keywords, linki |
| E-E-A-T Signals | 15 | Autor, cytowania, trust signals |
| Technical Elements | 15 | Schema, obrazy, OG tags, mobile |
| AI Citation Ready | 15 | Answer-first, citation capsules, FAQ, freshness |

**Quality Gates (hard rules — naruszenie = automatyczne -10pkt):**
- Sfabrykowane statystyki
- Paragraf >150 słów
- Skok w hierarchii nagłówków (H1→H3 bez H2)
- Brak alt text na obrazach
- Brak daty publikacji

### /content calendar <niche> [N] — Kalendarz publikacji

Generuj kalendarz na N dni (domyślnie 30) z:
- Tematy wg sezonowości i trendów
- Mix typów artykułów (40% how-to, 25% listicle, 15% case study, 20% inne)
- Keyword targets per artykuł
- Szacowana trudność (1-5)
- Sugerowane daty publikacji (pon/śr/pt)
- Content clusters (tematy powiązane wewnętrznie)

### /content persona — Persony pisarskie

Patrz `references/personas.md` — NNGroup 4-dimension framework z polskimi wariantami.

## Scoring artykułu — szczegóły

### Content Quality (30 pkt)

| Metryka | Max | Opis |
|---------|-----|------|
| Głębia tematu | 8 | Czy artykuł wyczerpuje temat? |
| Czytelność | 7 | Flesch PL equivalent, krótkie zdania |
| Burstiness | 5 | Variance długości zdań (std dev > 6 słów) |
| Oryginalność | 5 | Unikalne dane, perspektywa, case study |
| Formatowanie | 5 | Listy, tabele, nagłówki co 300 słów |

### SEO Optimization (25 pkt)

| Metryka | Max | Opis |
|---------|-----|------|
| Title tag | 5 | ≤60 znaków, keyword na początku |
| Meta description | 4 | ≤160 znaków, z CTA |
| H1 | 3 | Dokładnie 1, z keyword |
| H hierarchy | 4 | H1→H2→H3 bez skoków |
| Keyword placement | 4 | W H1, pierwszym H2, pierwsze 100 słów |
| Internal links | 3 | Min. 3 z descriptive anchors |
| External links | 2 | Min. 1 do autorytatywnego źródła |

### AI Citation Ready (15 pkt)

| Metryka | Max | Opis |
|---------|-----|------|
| Answer-first | 5 | Każdy H2 zaczyna się od 40-60 słów z odpowiedzią |
| Citation capsules | 4 | Samodzielne fragmenty 120-180 słów |
| FAQ section | 3 | FAQ z konkretnymi odpowiedziami |
| Entity clarity | 3 | Nazwy, daty, liczby zamiast ogólników |

## Anty-wzorce contentowe (explicit deny list)

Pisząc lub audytując treści — **NIGDY** nie generuj:

- ❌ Wprowadzeń "W tym artykule dowiesz się..." — zacznij od odpowiedzi, nie zapowiedzi
- ❌ Nagłówków H2 z frazą "Podsumowanie" jako jedyne zakończenie — dodaj actionable takeaway
- ❌ Listy 10+ punktów bez kategoryzacji — grupuj w 3-4 sekcje tematyczne
- ❌ CTA "Dowiedz się więcej" / "Czytaj dalej" — konkretny benefit ("Pobierz checklistę 12 błędów SEO")
- ❌ Uniformowych akapitów 3-4 zdania, 15-18 słów każde — celowo mieszaj długość (8→22→6 słów)
- ❌ Cytowanie "źródeł" bez weryfikacji URL — nie wymyślaj linków
- ❌ Zapowiedzi karuzelowych bez slide arc (Hook→What→How→Cases→CTA) — używaj tabeli łuku narracyjnego
- ❌ Hero copy bez kontrastu wartości — pokaż "z tym vs. bez tego", nie opisuj features

---

## Pułapki

### 1. Flagowane frazy AI — UNIKAJ bezwzględnie
Polskie odpowiedniki: "W dzisiejszych czasach...", "W dobie cyfryzacji...", "Kluczowym aspektem jest...", "Warto zwrócić uwagę na fakt, że...", "Nie ulega wątpliwości, że...", "Podsumowując..."
Angielskie: "In today's digital landscape", "It's important to note", "Delve into", "Game-changer", "Harness the power", "Leverage" (verb)

### 2. Em dash (—) = marker AI
Unikaj em dash w artykułach. Zastąp przecinkiem, dwukropkiem lub rozbij na dwa zdania.

### 3. Uniformowa długość zdań = AI fingerprint
Ludzkie pisanie: 8 słów, potem 22, potem 14, potem 6. AI: konsekwentnie 15-18 słów.
**Celowo mieszaj** — krótkie zdania. Potem dłuższe rozwinięcia z kilkoma wtrąceniami i podrzędnikami. I znów krótko.

### 4. Answer-first ≠ wprowadzenie
Answer-first to NIE "w tym artykule dowiesz się..." — to **konkretna odpowiedź z danymi** w pierwszych 40-60 słowach pod każdym H2.

### 5. Nadmierne keyword stuffing
Keyword density 1-3%, nie więcej. Polish Google rozumie odmiany (pozycjonowanie, pozycjonowania, pozycjonowaniem) — nie musisz powtarzać dokładnej formy.

### 6. Brak freshness signal
Artykuł bez daty publikacji traci 76% szans na cytowanie przez AI. ZAWSZE dodawaj `datePublished` i `dateModified` w schema.

### 7. FAQ schema — ograniczenia
FAQ schema (FAQPage) wyświetla rich results TYLKO dla stron rządowych/medycznych od sierpnia 2023. Nadal dodawaj FAQ sekcję (AI ją cytuje), ale nie oczekuj rich results.

### 8. Off-site signals dominują AI citations
88-92% cytowań AI pochodzi z earned media (YouTube, Reddit, branżowe portale), nie z on-page SEO. Skill sugeruje off-site strategy, ale implementacja jest poza scope'em.

## Quality Gate J — obowiązkowa walidacja post-generation

Po wygenerowaniu artykułu ZAWSZE uruchom Quality Gate (Self-Improving Protocol):

### Protokół PLAN→BUILD→VERIFY→LOOP→COMPLETE

1. **VERIFY** — załaduj `references/content-rules.md` i sprawdź KAŻDE kryterium:

| Kryterium | Warunek PASS | Jak sprawdzić |
|-----------|-------------|---------------|
| Zakazane słowa | count = 0 | Regex match z listy 127+ słów |
| Flesch PL | 70-80 | 206.835 - 1.015×(words/sentences) - 84.6×(syllables/words) |
| Pytania retoryczne | 0 na przejściach | Zdanie kończące `?` między akapitami |
| Szablonowe frazy | 0 | Match z listy: "należy zauważyć", "warto podkreślić", "podsumowując" |
| Naturalność PL | min. 2 elementy | Szukaj: idiomów, partykuł, zdrobnień |
| Powtórzenia strukturalne | 0 kolejnych | Porównaj pierwsze 3 słowa kolejnych akapitów |

2. **LOOP** — jeśli jakiekolwiek FAIL:
   - Iteracja 1: feedback z konkretnymi problemami (linia, słowo, powód) → regeneruj TYLKO problematyczne fragmenty
   - Iteracja 2: bardziej szczegółowy feedback → regeneruj
   - Iteracja 3: ostatnia próba → jeśli nadal fail → oznacz "wymaga ręcznej korekty"

3. **COMPLETE** — treść przechodzi do następnego etapu TYLKO gdy VERIFIED

### Integracja z pipeline

| Workflow | Gdzie Quality Gate |
|---------|-------------------|
| A (Zamknięta pętla) | Między generacją a Gate 3 (zatwierdzenie klienta) |
| B (SEO Autopilot) | Po wygenerowaniu treści SEO, przed publikacją |
| I (Social Pipeline) | Po wygenerowaniu postów, przed preview |

## Aliasy komend (PL + EN)

| PL | EN | Akcja |
|----|-----|-------|
| `/content napisz <temat>` | `/content write <topic>` | Pełny artykuł |
| `/content brief <fraza>` | `/content brief <keyword>` | Brief contentowy |
| `/content przepisz <url>` | `/content rewrite <url>` | Przepisz pod SEO |
| `/content analiza <url>` | `/content analyze <url>` | Analiza jakości |
| `/content kalendarz <niche>` | `/content calendar <niche>` | Kalendarz publikacji |
| `/content persona` | `/content persona` | Zarządzanie personami |
| `/content zarys <temat>` | `/content outline <topic>` | Zarys artykułu |

## Dodatkowe zasoby

- Zasady pisania + quality gates: [references/content-rules.md](references/content-rules.md)
- Persony pisarskie (PL): [references/personas.md](references/personas.md)
- Szablony artykułów: [templates/](templates/)
