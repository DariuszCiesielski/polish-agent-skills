---
name: seo
description: Kompleksowy audyt SEO i konwersji dowolnej strony internetowej — technical, content, E-E-A-T, schema, GEO/AEO, Core Web Vitals + audyt konwersji landing page (14 checkpointów, brand maturity). Używaj przy "audyt SEO", "sprawdź SEO", "zoptymalizuj pod Google", "analiza strony", "pozycjonowanie", "SEO audit", "check SEO", "on-page SEO", "schema markup", "E-E-A-T", "audyt landing page", "konwersja strony", "sprawdź landing page", "conversion audit", "CTA audit". Auto-aktywacja gdy kontekst dotyczy optymalizacji stron pod wyszukiwarki lub konwersji. NIE używaj do zarządzania kampaniami Google Ads — od tego jest osobny skill.
---

# SEO Auditor

Skill do przeprowadzania audytów SEO z poziomu Claude Code. Działa na dowolnym URL bez potrzeby konfiguracji — wystarczy adres strony.

## Kiedy używać

- Użytkownik prosi o audyt SEO strony
- Analiza techniczna strony (robots.txt, sitemap, canonical, HTTPS)
- Ocena jakości treści pod kątem E-E-A-T
- Walidacja lub generowanie schema markup (JSON-LD)
- Optymalizacja pod AI search (GEO/AEO — Google AI Overviews, ChatGPT, Perplexity)
- Analiza Core Web Vitals
- Generowanie planu optymalizacji SEO
- Audyt hreflang dla stron wielojęzycznych (PL/EN)

## Komendy

```
/seo audit <url>           — pełny audyt strony (równoległe subagenty)
/seo page <url>            — szybka analiza pojedynczej strony
/seo technical <url>       — audyt techniczny (9 kategorii)
/seo content <url>         — analiza treści + E-E-A-T
/seo schema <url>          — walidacja i generowanie schema markup
/seo geo <url>             — optymalizacja pod AI search
/seo plan <typ-branży>     — strategiczny plan SEO (saas|local|ecommerce|publisher|agency)
/seo conversion <url>      — audyt konwersji landing page (14 checkpointów, brand maturity)
/seo hreflang <url>        — audyt wielojęzyczności
```

## Instrukcje

### /seo audit <url> — Pełny audyt

1. **Fetch strony głównej** — pobierz HTML, wykryj typ biznesu (SaaS/local/ecommerce/publisher/agency)
2. **Odkryj podstrony** — przeszukaj sitemap.xml, robots.txt, linki wewnętrzne (max 50 stron)
3. **Deleguj do subagentów RÓWNOLEGLE** (użyj Agent tool z 3 agentami jednocześnie):
   - `agents/technical-audit.md` — technical SEO (9 kategorii)
   - `agents/content-audit.md` — treść + E-E-A-T + AI detection
   - `agents/geo-audit.md` — AI search readiness + GEO
4. **Agreguj wyniki** — oblicz SEO Health Score (0-100)
5. **Wygeneruj raport** z priorytetyzowanymi rekomendacjami

**Scoring (wagi):**

| Kategoria | Waga |
|-----------|------|
| Technical SEO | 22% |
| Content Quality (E-E-A-T) | 23% |
| On-Page SEO | 20% |
| Schema / Structured Data | 10% |
| Performance (CWV) | 10% |
| AI Search Readiness (GEO) | 10% |
| Obrazy | 5% |

**Format wyjścia:**

```markdown
# Audyt SEO: [domena]
Data: [YYYY-MM-DD]

## Wynik ogólny: [X]/100 — [etykieta]

## Podsumowanie
[3-5 zdań: najważniejsze ustalenia i rekomendacje]

## Wyniki kategorii
| Kategoria | Wynik | Status |
|-----------|-------|--------|
| Technical | XX/100 | 🟢/🟡/🔴 |
| Content   | XX/100 | 🟢/🟡/🔴 |
| ...       | ...   | ...    |

## Krytyczne problemy (napraw natychmiast)
1. [Problem] — [Wpływ] — [Rozwiązanie]

## Wysokie priorytety (napraw w ciągu tygodnia)
...

## Średnie priorytety (napraw w ciągu miesiąca)
...

## Niskie priorytety (backlog)
...

## Plan działania
[Priorytetyzowana lista kroków z szacowanym effort/impact]
```

### /seo page <url> — Szybka analiza jednej strony

Bez subagentów — bezpośrednia analiza:

1. **Fetch HTML** strony (Firecrawl lub WebFetch)
2. **Sprawdź:**
   - Title tag (≤60 znaków, zawiera keyword)
   - Meta description (≤160 znaków)
   - Canonical URL (czy istnieje, czy prawidłowy)
   - H1 (dokładnie 1, zawiera keyword)
   - Hierarchia nagłówków (H1→H2→H3, bez pominięć)
   - Linki wewnętrzne (min. 3)
   - Linki zewnętrzne (min. 1)
   - Obrazy bez alt text
   - Word count (min. wg typu strony — patrz references/quality-gates w eeat-framework.md)
   - Schema markup (obecność, typ, walidność)
   - Open Graph tags
   - Core Web Vitals (jeśli dostępne przez API)
3. **Oceń** (0-100) i **wylistuj** issues z priorytetami

### /seo technical <url> — Audyt techniczny

Deleguj do `agents/technical-audit.md`. 9 kategorii:

1. Crawlability (robots.txt, meta robots, X-Robots-Tag)
2. Indexability (canonical, noindex, sitemap coverage)
3. Security (HTTPS, HSTS, mixed content)
4. Core Web Vitals (LCP ≤2.5s, INP ≤200ms, CLS ≤0.1)
5. URL structure (czyste URL, bez parametrów, max 3 poziomy)
6. Mobile-friendliness (viewport, font-size, tap targets)
7. JavaScript SEO (SSR vs CSR, canonical conflicts, structured data timing)
8. Redirecty (łańcuchy, 302→301, loops)
9. Internacjonalizacja (hreflang, lang attr, content-language)

### /seo content <url> — Analiza treści + E-E-A-T

Deleguj do `agents/content-audit.md`. Ocena wg E-E-A-T framework (szczegóły: `references/eeat-framework.md`):

- **Experience** (20%) — first-hand knowledge, case studies, oryginalność
- **Expertise** (25%) — kwalifikacje autora, dokładność techniczna
- **Authoritativeness** (25%) — cytowania zewnętrzne, rozpoznawalność
- **Trustworthiness** (30%) — kontakt, bezpieczeństwo, transparentność

Dodatkowe checks:
- **Readability PL** — Flesch Reading Ease zaadaptowany do polskiego:
  - Formuła: `206.835 - 1.015 × (words/sentences) - 84.6 × (syllables/words)`
  - Heurystyka sylab PL: policz samogłoski (a,ą,e,ę,i,o,ó,u,y); korekty: "ia","ie","iu" = 1 sylaba
  - Target: **70-80** (optymalny) | 60-70 OK dla B2B | <60 za trudny | >80 za łatwy
- Thin content detection (próg: patrz eeat-framework.md)
- AI content markers (generic phrasing, brak unikalnej perspektywy)
- Keyword density (1-3%, bez keyword stuffing)

### /seo schema <url> — Schema markup

1. **Wykryj** istniejący JSON-LD, Microdata, RDFa
2. **Waliduj** — sprawdź wymagane pola, deprecated types (patrz `references/schema-types.md`)
3. **Zaproponuj** brakujące schema na bazie typu strony
4. **Wygeneruj** gotowy JSON-LD do wklejenia

**UWAGA:** FAQ schema ograniczone od Aug 2023 — tylko strony rządowe/medyczne. HowTo deprecated od Sept 2023. Pełna lista: `references/schema-types.md`.

### /seo geo <url> — AI Search Readiness

Deleguj do `agents/geo-audit.md`. Sprawdza gotowość na AI search:

- **AI Crawler Access** — GPTBot, ClaudeBot, PerplexityBot, Bytespider, Google-Extended w robots.txt
- **llms.txt** — obecność i kompletność pliku `/llms.txt`
- **Citability Score** — optymalny fragment 134-167 słów, structural readability
- **Brand Mentions** — YouTube (0.737 korelacja), Reddit, Wikipedia, LinkedIn
- **Structured Readability** — nagłówki, listy, tabele ułatwiające ekstrakcję AI

### /seo plan <typ> — Strategiczny plan SEO

Typy branżowe: `saas`, `local`, `ecommerce`, `publisher`, `agency`

Generuj plan zawierający:
1. **Audyt wstępny** — key findings
2. **Quick wins** (tydzień 1-2) — meta tagi, schema, technical fixes
3. **Fundament** (miesiąc 1) — content strategy, keyword research, site structure
4. **Growth** (miesiąc 2-3) — content creation, link building strategy, local SEO
5. **Scale** (miesiąc 4-6) — programmatic SEO, advanced schema, international
6. **Monitoring** — KPI, narzędzia, częstotliwość raportów

### /seo conversion <url> — Audyt konwersji landing page

Analiza first screen (above the fold) pod kątem konwersji cold traffic. 14 checkpointów, scoring 0-140 (normalizowany do %).

**Inspiracja:** Landing Page Doctor (JackChen-me) — zaadaptowane do polskiego rynku.

#### Krok 1: Capture

Użyj Playwright MCP do zrobienia screenshotów:
1. Desktop (1440×900) — `browser_navigate` → `browser_take_screenshot`
2. Mobile (375×812) — `browser_resize` → `browser_take_screenshot`
3. Zbierz dane strony — `browser_snapshot` → wyciągnij: headline, subheadline, CTA (tekst + href), nav items, trust elements, product visuals, pricing signals

#### Krok 2: Klasyfikacja

**2a. Typ strony:**

| Typ | Trust anchors które liczą się najbardziej |
|-----|-------------------------------------------|
| A. Indie tool / SaaS | GitHub stars, PH ranking, liczba użytkowników |
| B. Enterprise B2B | Loga klientów, certyfikaty, case studies |
| C. E-commerce / Consumer | Recenzje, wolumen sprzedaży, social proof |
| D. Content / Marka osobista | Kwalifikacje, media mentions, followersów |

**2b. Dojrzałość marki (WYMAGANE):**

| Poziom | Sygnały | Wpływ na interpretację |
|--------|---------|------------------------|
| 🟢 Znana | Rozpoznawalna marka, wysoki organic/referral | Niskie trust scores mniej krytyczne |
| 🟡 Rosnąca | Pewne rozpoznanie w niszy | Trust ważny ale nie decydujący |
| 🔴 Nieznana | Nowy produkt, cold traffic, brak rozpoznawalności | Trust i commitment scores są KRYTYCZNE |

#### Krok 3: 14 checkpointów (feature detection Y/N)

Każdy checkpoint = 0-10 punktów. Metoda: obiektywne Y/N checke (nie subiektywna ocena).

**Reguła anty-inflacji:** Jeśli wszystkie sub-checki technicznie przechodzą, ale intencja checkpointu jest ewidentnie niespełniona → zastosuj **-2 "reality check"** i udokumentuj dlaczego.

##### A. Komunikacja wartości (max 40 pkt)

**#1. Nagłówek — propozycja wartości (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Zawiera "Ty/Twój/Twoja" lub zwraca się bezpośrednio do czytelnika? | |
| b | Zawiera konkretną liczbę, czas lub wymierny rezultat? | |
| c | Wolny od żargonu technicznego jako główny przekaz? (API, SaaS = fail chyba że dev audience) | |
| d | Zawiera czasownik akcji (oszczędź/zapomnij/przestań/stwórz/zbuduj/zacznij)? | |
| e | Długość 10-30 polskich znaków lub 5-15 angielskich słów? | |

Anty-inflacja: animowane/rotujące słowa → każdy wariant musi sam w sobie mieć sens, inaczej -2.
Formuła rewrite: [Ból użytkownika] + [Rezultat po użyciu produktu]

**#2. Klarowność 5-sekundowa (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Nagłówek + podnagłówek razem odpowiadają "co mi to daje"? | |
| b | Max 1 główny koncept na first screen? | |
| c | Podnagłówek obecny i daje dodatkowy kontekst (nie powtarza nagłówka)? | |
| d | Kategoria produktu jasna bez wiedzy wstępnej? | |
| e | Język dopasowany do słownictwa grupy docelowej? | |

**#3. Zakotwiczenie grupy docelowej (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Grupa docelowa nazwana na first screen ("dla founders / dla małych firm / dla zespołów")? | |
| b | Ból/use case mówi do specyficznej grupy (nie "każdy kto chce...")? | |
| c | Język/przykłady odzwierciedlają świat grupy docelowej? | |
| d | Social proof (jeśli jest) pokazuje ludzi z grupy docelowej? | |
| e | Odwiedzający może się zidentyfikować ("to jest dla mnie") w 5 sekund? | |

Cap: Jeśli grupa docelowa nigdzie nie jest wspomniana → max 2.

**#4. Gęstość informacyjna first screen (0-10)**

| # | Check | Punkty |
|---|-------|--------|
| a | Tylko 3 elementy: nagłówek + visual + CTA? | +4 |
| b | 4-5 elementów (lekko zajęte ale przekaz jasny)? | +2 |
| c | 6+ bloków? | +0 |
| d | Wystarczający whitespace? | +3 |
| e | Brak konkurujących targetów konwersji (1 primary CTA)? | +3 |

Anty-inflacja: 15+ bloków na first screen → whitespace max +1 niezależnie od wrażenia.

##### B. Prowadzenie do akcji (max 30 pkt)

**#5. Widoczność CTA (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | CTA widoczne w górnej połowie first screen? | |
| b | Kolor CTA kontrastuje z tłem I jest najwyraźniejszym klikalnym elementem? | |
| c | CTA to przycisk (nie link tekstowy)? | |
| d | Jeden primary CTA o najwyższej wadze wizualnej? | |
| e | Rozmiar CTA wystarczający (min ~120px szerokości)? | |

Anty-inflacja: 2+ CTA o podobnej wadze wizualnej (oba wypełnione kolorem, podobny rozmiar) → d=N=0.

**#6. Tekst CTA (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Tekst CTA zawiera konkretny czasownik (NIE "Dowiedz się więcej/Sprawdź")? | |
| b | CTA opisuje co się stanie po kliknięciu ("Zacznij za darmo/Zobacz demo")? | |
| c | CTA brzmi low-commitment (za darmo, bez karty, natychmiast)? | |
| d | Micro-copy przy CTA redukuje barierę WEJŚCIA? "Bez podawania karty" — sam "Możesz anulować" to bariera WYJŚCIA, nie wejścia → N=0 | |
| e | Tekst CTA ≤8 polskich słów lub ≤5 angielskich? | |

**#7. Redukcja zobowiązania (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Free tier lub trial wymieniony na first screen? | |
| b | "Bez karty kredytowej / bez rejestracji" obecne? | |
| c | Time-to-value zakomunikowany ("2 minuty setup / gotowe w 30 sekund")? | |
| d | Odwracalność zasygnalizowana ("Anuluj w dowolnym momencie")? | |
| e | Brak agresywnego pricingu / presji zakupu na first screen? | |

##### C. Zaufanie i dowody (max 30 pkt)

**#8. Obecność dowodów zaufania (0-10)**

| # | Element | Punkty |
|---|---------|--------|
| a | Konkretna liczba użytkowników TEGO produktu ("2000+ firm korzysta") | +3 |
| b | Realna recenzja z weryfikowalną tożsamością (imię+firma LUB link do profilu LUB zdjęcie) | +3 |
| c | GitHub stars / PH ranking / nagrody | +2 |
| d | Loga klientów lub wzmianki mediów | +2 |
| e | Badge'e bezpieczeństwa / certyfikaty | +1 |

Zero elementów trust = 0 punktów. Max 10.
Ostrzejsza reguła: @handle bez linka weryfikacyjnego → połowa punktów (+1 zamiast +3).

**#9. Autentyczność zaufania (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Trust elements zawierają konkretne, weryfikowalne szczegóły? | |
| b | Recenzje brzmią autentycznie I mają zróżnicowaną strukturę? (3+ recenzji o identycznej strukturze zdań → N=0) | |
| c | Liczby wiarygodne i specyficzne (nie podejrzanie okrągłe "10000+")? | |
| d | Trust elements wizualnie zintegrowane (nie ukryte)? | |
| e | Min 1 trust element z prawdziwą twarzą lub weryfikowalną tożsamością? | |

**#10. Wizualizacja produktu (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Screenshot / UI mockup / interfejs widoczny na first screen? | |
| b | Screenshot pokazuje realistyczny stan (nie pusty/placeholder)? | |
| c | Video demo, GIF lub interaktywny preview dostępny na first screen lub 1 klik dalej? | |
| d | Visual jasno komunikuje główną funkcjonalność (nie dekoracyjna ilustracja)? | |
| e | Visual odpowiada temu co user zobaczy po rejestracji (nie aspiracyjna grafika)? | |

Cap: ZERO wizualizacji produktu na first screen → max 2.
Dlaczego: "Show don't tell" — screenshot/GIF → +30-50% konwersji vs sam opis tekstowy.

##### D. Gotowość konwersyjna (max 20 pkt)

**#11. Widoczność ceny (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Cennik gdziekolwiek na stronie (nie musi być first screen)? | |
| b | Konkretne ceny widoczne (nie tylko "przystępna cena" / "skontaktuj się")? | |
| c | Free tier wyraźnie odróżniony od płatnych planów? | |
| d | Strona z cenami dostępna w 1 klik z nawigacji? | |
| e | "Kontakt po cennik" NIE jest jedyną ścieżką (dla narzędzi targetujących SMB/indie)? | |

Cap: Link "Cennik" w nav prowadzi do strony bez cen → max 3. Złamanie obietnicy GORSZE niż brak linka.
Kontekst: 🟢 Znana marka → niska widoczność cen bardziej akceptowalna. 🔴 Nieznana → ukryta cena = "pewnie drogo" = bounce.

**#12. Spójność ścieżki CTA (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Wszystkie CTA signup/start prowadzą do tego samego celu (nie mieszają /signin vs /signup)? | |
| b | Tekst CTA odpowiada temu co się dzieje po kliknięciu ("Zacznij za darmo" nie prowadzi do cennika)? | |
| c | Brak martwych linków z first screen CTA? | |
| d | Secondary CTA prowadzą do sensownej treści (nie generic anchor scroll)? | |
| e | CTA w nawigacji i CTA w hero — spójny język i ten sam cel? | |

##### E. Technika (max 20 pkt)

**#13. Responsywność mobile (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | CTA widoczne na mobile first screen bez scrollowania? | |
| b | Tekst czytelny (min ~14px)? | |
| c | Brak horizontal overflow / obciętych elementów? | |
| d | Tap targets odpowiedniej wielkości i rozstawienia? | |
| e | Layout adaptuje się (nie jest zmniejszonym desktopem)? | |

**#14. Czytelność tekstu first screen (0-10)**

| # | Check | Y=2 / N=0 |
|---|-------|-----------|
| a | Nagłówek wolny od niewyjaśnionych skrótów/akronimów? | |
| b | Żaden paragraf na first screen > 2 linii? | |
| c | Hierarchia wizualna jasna (nagłówek > podnagłówek > body, wyraźne rozmiary)? | |
| d | Odpowiedni line-spacing i letter-spacing? | |
| e | Wystarczający kontrast tekst vs tło? | |

#### Krok 4: Interpretacja kontekstowa (WYMAGANE)

Surowe punkty to fakty obiektywne. Interpretacja mówi co z nimi ZROBIĆ.

**Macierz interpretacji — dojrzałość marki × kategoria:**

| Kategoria | 🟢 Znana | 🟡 Rosnąca | 🔴 Nieznana |
|-----------|----------|------------|-------------|
| A. Wartość (#1-4) | Niski wynik przeżywalny | Umiarkowany wpływ | **KRYTYCZNY** — cold traffic = zero kontekstu |
| B. Akcja (#5-7) | Mniej istotne (direct traffic) | Ważne | **KRYTYCZNY** — user musi wiedzieć co robić w 5s |
| C. Zaufanie (#8-10) | Akceptowalne — marka = trust | Ważne | **DECYDUJĄCE** — zero trust = zero konwersji |
| D. Konwersja (#11-12) | Tolerowalne | Ważne | **KRYTYCZNY** — ukryta cena / złamane CTA = bounce |
| E. Technika (#13-14) | Tak samo | Tak samo | Tak samo |

**Zawsze dołącz sekcję "Gdybyś był indie developerem"** — niezależnie od marki analizowanej strony. Reinterpretuj wyniki z perspektywy nieznanej marki + cold traffic.

#### Krok 5: Raport

```markdown
# Audyt konwersji landing page: [domena]
Data: [YYYY-MM-DD]

## Klasyfikacja
- **Typ strony**: [A/B/C/D + nazwa]
- **Dojrzałość marki**: [🟢/🟡/🔴 + nazwa]
- **Wynik**: [X]/140 ([Y]%) — ocena [S/A/B/C/D]

## Wyniki kategorii
| Kategoria | Wynik | Max | Status |
|-----------|-------|-----|--------|
| A. Komunikacja wartości | X | 40 | 🟢/🟡/🔴 |
| B. Prowadzenie do akcji | X | 30 | 🟢/🟡/🔴 |
| C. Zaufanie i dowody | X | 30 | 🟢/🟡/🔴 |
| D. Gotowość konwersyjna | X | 20 | 🟢/🟡/🔴 |
| E. Technika | X | 20 | 🟢/🟡/🔴 |

## Szczegółowa diagnoza
[14 checkpointów: aktualny stan → problem → sugerowane rewrite A/B]

## Interpretacja
### Co naprawdę znaczą te wyniki
[Kontekst brand maturity — które wyniki są zawyżone/zaniżone]

### Gdybyś był indie developerem / nieznaną marką
[ZAWSZE wymagane — reinterpretacja z perspektywy cold traffic]

### Co warto skopiować z tej strony
[2-3 silne strony niezależne od brand maturity]

## Gdybyś mógł zmienić tylko jedną rzecz
[Najwyższy ROI — z konkretnym rewrite]

## Top 3 priorytety
1. [Posortowane wg wpływu na konwersję]
2. ...
3. ...
```

**Grading:** S(90%+) A(80-89%) B(70-79%) C(60-69%) D(<60%)

**Priorytetyzacja rekomendacji (wg ROI):**
1. Dodaj wizualizację produktu (jeśli #10 < 5)
2. Przepisz nagłówek (jeśli #1 < 7)
3. Popraw CTA (jeśli #5 lub #6 < 7)
4. Dodaj trust anchor (jeśli #8 < 5)
5. Pokaż cennik (jeśli #11 < 5)
6. Usuń clutter (jeśli #4 < 7)
7. Zakotwicz grupę docelową (jeśli #3 < 5)
8. Napraw ścieżki CTA (jeśli #12 < 7)
9. Fix mobile (jeśli #13 < 7)
10. Zmniejsz zobowiązanie (jeśli #7 < 7)

### /seo hreflang <url> — Audyt wielojęzyczności

1. Wykryj implementację hreflang (HTML link, HTTP header, sitemap)
2. Sprawdź: return tags, x-default, self-referencing, language codes
3. Wykryj konflikty z canonical
4. Zaproponuj poprawki

## Priorytety issues

| Poziom | Definicja | Timeframe |
|--------|-----------|-----------|
| **Critical** | Blokuje indeksowanie lub powoduje kary | Natychmiast |
| **High** | Znacząco wpływa na rankingi | 1 tydzień |
| **Medium** | Okazja optymalizacji | 1 miesiąc |
| **Low** | Nice to have | Backlog |

## Integracja z projektem Specjalista SEO

Jeśli użytkownik pracuje w projekcie "Specjalista SEO" (`~/projekty/Specjalista SEO/`):
- Wykorzystaj istniejące Edge Functions (`supabase/functions/`) do audytu on-page
- Dane zapisuj do Supabase (tabele `seo_audits`, `seo_audit_pages`)
- Raport generuj przez `ai-report` Edge Function
- Wykorzystaj DataForSEO API (klucze w `.env.local`)

W innych projektach: działaj samodzielnie z Firecrawl/WebFetch.

## Anty-wzorce SEO (explicit deny list)

Generując lub audytując SEO — **NIGDY** nie rób:

- ❌ Meta descriptions z "Sprawdź naszą ofertę" / "Zapraszamy do kontaktu" — generyczne CTA bez wartości
- ❌ Title tagów >60 znaków polskich — polskie znaki (ą,ę,ó) zajmują więcej pikseli, celuj w ≤55
- ❌ Keyword stuffingu w H1 — max 1 fraza kluczowa, naturalnie
- ❌ Alt tekstów "obrazek" / "zdjęcie" / "foto" / "image" — opisz CO jest na obrazku
- ❌ Schema markup bez weryfikacji w Rich Results Test — nie zakładaj poprawności
- ❌ Canonical URL z trailing slash i bez — zdecyduj się na jeden format i trzymaj go
- ❌ Wielu H1 na stronie — dokładnie jeden H1 per strona
- ❌ Hreflang bez x-default — zawsze dodaj fallback
- ❌ Polskich znaków diakrytycznych w URL slugach — używaj transliteracji (ą→a, ł→l)
- ❌ FAQ schema na stronach biznesowych — Google ograniczyło do rządowych/medycznych (2023+)

---

## Pułapki

### 1. FAQ schema — ograniczenie od sierpnia 2023
Google ograniczyło FAQ rich results do stron rządowych i medycznych. NIE rekomenduj FAQ schema dla zwykłych stron biznesowych — zostanie zignorowane.

### 2. HowTo schema — deprecated od września 2023
Google przestało wyświetlać HowTo rich results. NIE rekomenduj implementacji HowTo schema.

### 3. FID → INP — zamiana od marca 2024
First Input Delay (FID) została całkowicie usunięta 9 września 2024. Zawsze używaj **INP** (Interaction to Next Paint). Próg: ≤200ms good, >500ms poor.

### 4. Mobile-First Indexing — 100% od lipca 2024
Google crawluje WSZYSTKIE strony wyłącznie mobile Googlebot. Desktop-only treści są niewidoczne.

### 5. AI content — Google akceptuje, ALE z E-E-A-T
AI-generated content jest OK jeśli wykazuje genuine E-E-A-T. Flaguj jako niskiej jakości TYLKO gdy: brak unikalnej perspektywy, generic phrasing, błędy faktyczne.

### 6. Google-Extended ≠ Google Search
`Google-Extended` w robots.txt blokuje TYLKO trening Gemini, NIE indeksowanie przez Googlebot. Nie blokuj `Googlebot` myśląc, że blokujesz AI.

### 7. Canonical conflicts z JavaScript
Jeśli surowy HTML ma inny canonical niż JS-injected, Google może użyć każdego z nich. Zawsze sprawdzaj ZARÓWNO źródło HTML jak i wyrenderowaną stronę.

### 8. Polski rynek — specyfika
- Senuto i Semstorm jako narzędzia referencyjne (oprócz globalnych)
- Polskie znaki diakrytyczne w URL — unikaj, używaj transliteracji
- Domena .pl preferowana przez użytkowników, ale nie wpływa na ranking Google
- Google.pl = ten sam algorytm co google.com z lokalizacją

### 9. noindex w surowym HTML
Jeśli `noindex` jest w initial HTML, Google go honoruje nawet jeśli JS go usuwa. Zawsze sprawdzaj raw HTML response.

### 10. Structured data timing
Schema w initial HTML > schema injected via JS. Opóźnienie JS może sprawić, że Googlebot nie zobaczy schema.

## Aliasy komend (PL + EN)

| PL | EN | Akcja |
|----|-----|-------|
| `/seo audyt <url>` | `/seo audit <url>` | Pełny audyt |
| `/seo strona <url>` | `/seo page <url>` | Analiza 1 strony |
| `/seo techniczny <url>` | `/seo technical <url>` | Audyt techniczny |
| `/seo treść <url>` | `/seo content <url>` | Analiza treści |
| `/seo schemat <url>` | `/seo schema <url>` | Schema markup |
| `/seo konwersja <url>` | `/seo conversion <url>` | Audyt konwersji LP |
| `/seo plan <typ>` | `/seo plan <type>` | Plan strategiczny |

## Dodatkowe zasoby

- Core Web Vitals thresholds: [references/cwv-thresholds.md](references/cwv-thresholds.md)
- E-E-A-T framework + polskie benchmarki: [references/eeat-framework.md](references/eeat-framework.md)
- Schema types (aktywne/deprecated): [references/schema-types.md](references/schema-types.md)
- GEO/AEO optymalizacja: [references/geo-optimization.md](references/geo-optimization.md)
- SERP features (aktywne/deprecated): [references/serp-features.md](references/serp-features.md)
- Content length benchmarks wg typu strony: [references/content-length-benchmarks.md](references/content-length-benchmarks.md)
- Kontekst marketingowy projektu: skill `product-marketing-context` → generuje `seo-guidelines.md`, `target-keywords.md`
