---
name: craig-outbound-sequence-pl
description: Multi-channel outbound sequences dla polskiego SaaS B2B micro-small (deal 299-4999 PLN/mies). Capacity math (meeting rate benchmarks PL), 14-day sprint cadence, channel mix (email + LinkedIn + telefon), branching logic (positive reply / objection / "wyślij info"), 3 najczęstsze odpowiedzi. Używaj gdy user mówi "zbuduj sekwencję", "zaprojektuj cadence", "ile touchy", "multi-channel plan", "follow-up strategia", "sekwencja outboundu". Bazuje na TheCraigHewitt/outbound-sequence — wycięto enterprise SEP tools (Outreach/Salesloft), dodano polskie benchmarki i 14-day sprint dla solo foundera.
---

# Outbound Sequence Design — polski SaaS B2B

**Źródło:** Adaptacja z [TheCraigHewitt/skills/sales/outbound-sequence](https://github.com/TheCraigHewitt/skills). Wycięto: 10+ rep team management, SEP tool comparison enterprise, 60-day enterprise play. Dodano: polskie reply rate benchmarks, solo founder capacity math, krótszy cykl decyzyjny polskich micro-SaaS.

## Przed startem

Sprawdź `.agents/sales-context.md` — ICP, value prop, sales motion. Bez tego sequence to strzał w ciemno.

## Capacity math — policz zanim projektujesz

Przed pojedynczym touch'em zrób matematykę **od celu spotkań wstecz**. To oddziela strategię outbound od "wysyłajmy maile i miejmy nadzieję".

```
Miesięczny cel spotkań:         ___
÷ Expected meeting rate:        ___% (benchmarks niżej)
= Kontakty do sequence/miesiąc: ___

Przykład polskiego solo foundera:
  Cel: 5 spotkań/miesiąc
  Meeting rate: 5% (personalized multi-channel)
  → 100 kontaktów do sequence/miesiąc

  Przy 14-dniowej sekwencji:
  → ~50 aktywnych kontaktów w każdym momencie
  → ~5 nowych kontaktów dziennie (25 dni roboczych)
```

**Meeting rate benchmarks (PL SaaS micro-small):**

| Podejście | Meeting rate | Kontaktów na 5 spotkań |
|---|---|---|
| Personalized multi-channel | 4-6% | 85-125 |
| Semi-personalized email + LinkedIn | 2-4% | 125-250 |
| Templated email-only | 0.5-1.5% | 335-1000 |
| **Warm/triggered outbound** | **8-15%** | **35-65** |

**Polski realizm:** jeśli Twoja matematyka mówi "potrzebuję 500 kontaktów/miesiąc" — nie masz problemu z sequence, masz problem ze **skalą rynku** (polski B2B SaaS micro-small nie ma takich volumes). Celuj w warm/triggered + personalized multi-channel, nie w spray-and-pray.

## 5 zasad fundamentalnych

1. **Multi-channel zawsze bije single-channel.** Sekwencje tylko-email plateau na ~2% reply rate. Dodaj LinkedIn + telefon → 8-12%. Kanały wzmacniają się nawzajem — Twój email ląduje inaczej po tym jak zobaczyli Twoją wizytę na profilu.
2. **Front-load intensywność, potem rozrzedź.** Dni 1-7 najwyższa density touchy. Jeśli się zaangażują, to zwykle w pierwszym tygodniu. Potem długa gra.
3. **Każdy touch musi być standalone.** Nie pisz "just following up na mój poprzedni email". Każda wiadomość potrzebuje własnego powodu istnienia — nowy insight, inny kąt, świeży trigger. Jeśli nie wymyślasz nowego kąta — brak researchu.
4. **Wiedz kiedy przestać.** Więcej touchy ≠ więcej reply. Po 12-14 touchach zero engagement → nurture track albo inna persona w tej samej firmie. Wytrwałość OK, nękanie NIE.
5. **Testuj sekwencję, nie tylko wiadomości.** Większość testuje subject lines, nigdy struktury sekwencji — timing, kolejność kanałów, liczba touchy. Struktura często waży więcej niż copy.

## Bad vs good sequence

**Złamana (co większość polskich founderów robi):**
```
Dzień 1:  Email — generyczny template, leadzi z produktem
Dzień 3:  Email — "just following up"
Dzień 7:  Email — "podbijam do góry inboxa"
Dzień 14: Email — "ostatnia próba" (poddaje się)
```
Dlaczego nie działa: jeden kanał, brak value per touch, follow-upy referują poprzednie maile zamiast dodawać kąty, poddaje się przy 4 touchach gdy dane mówią 8-12. Prospect widzi "email, email, email" i uczy się ignorować.

**Dobrze zaprojektowana (ten sam wysiłek, 3-5x wyniki):**
```
Dzień 1:  Email — trigger-based, research-driven, specific pain
Dzień 1:  LinkedIn — profile view + connection request (bez pitchu)
Dzień 3:  Telefon — referuj email, 30-sek pitch, zostaw VM
Dzień 4:  Email — inny kąt, social proof dla ich branży
Dzień 6:  LinkedIn — DM po accept (conversational, nie salesy)
Dzień 8:  Telefon — inna pora dnia, inny opener
Dzień 8:  Email — case study z twardymi metrykami
Dzień 11: Email — breakup z value-add, nie desperacja
Dzień 14: LinkedIn — share content, bez asku
```

## Kanał per persona (polski kontekst)

| Buyer | Primary | Secondary | Tertiary | Uwagi |
|---|---|---|---|---|
| **Polski founder/CEO micro-SaaS** | LinkedIn | Email | Telefon | LinkedIn first — polski founder jest na LI aktywny |
| **Dyrektor marketingu** | Email | LinkedIn | Telefon | Email krótki + LinkedIn engagement |
| **Head of Sales / Dyr. handlowy** | LinkedIn | Telefon | Email | Telefon w PL nadal działa dla sprzedaży |
| **Manager / Specjalista** | Email | Telefon | LinkedIn | Bezpośredni outreach OK |
| **Technical buyer (CTO)** | LinkedIn (content) | Email | Community | Nie dzwoń. Zdobądź uwagę przez content. |
| **Właściciel mikro 1-10 osób** | Telefon | Email | LinkedIn | Odpowiadają na telefon. Dzwoń first. |

## Reply rate benchmarks (PL SaaS)

| Kanał | Średnio | Dobrze | Uwagi |
|---|---|---|---|
| Email (polski SaaS B2B) | 2-5% | 5-10% | Mniej saturowane niż US, ale też wolniejsze reakcje |
| Telefon connect | 15-25% | 25-35% | Wyższe niż US — polski rynek mniej spamowany cold callami |
| LinkedIn accept | 25-40% | 40-55% | Wyższe niż US (mniej spam outreach) |
| LinkedIn DM reply | 8-15% | 15-25% | |

Jeśli jesteś poniżej "Średnio" — napraw listę albo copy PRZED winą sequence.

## 14-day sprint (polski micro-SaaS — domyślna cadence)

**Dla:** deal 299-4999 PLN/mies, buyer: Manager-VP, high volume outbound.

| Dzień | Kanał | Touch | Uwagi |
|---|---|---|---|
| 1 | Email | Trigger-based cold email | Lead z researchem. Bez "chciałbym". |
| 1 | LinkedIn | Profile view + connection request | Krótki, bez pitchu |
| 3 | Telefon | Cold call #1 | Referuj email. Zostaw VM. |
| 4 | Email | Inny kąt, nowy value prop | Nie follow-up. Nowa standalone wiadomość. |
| 6 | LinkedIn | DM po accept | Rozmowa, nie pitch |
| 8 | Telefon | Cold call #2 | Inna pora dnia niż #1 |
| 8 | Email | Case study / social proof | "Firma jak Wasza zrobiła X" |
| 11 | Email | Breakup / last touch | Pilność bez desperacji |
| 14 | LinkedIn | Value-add content share | Udostępnij coś istotnego, bez asku |

**Oczekiwane wyniki:** 8-12% reply rate na personalized sequences, 3-5% meeting rate.

### Przykłady touchy (14-day sprint)

**Day 1 — Email:**
```
Temat: {{firma}} + [specific problem]

Cześć {{imie}},

Zauważyłem że rekrutujecie 3 Account Executives — większość VP-ów
z którymi rozmawiam mówi że ramp time staje się bottleneckiem
przy tym tempie hire'ów.

Pomogliśmy {{similar firma}} skrócić ramp z 6 miesięcy do 11 tygodni
przez AI coaching na live'ach.

Warto 15 minut?

{{podpis}}
```

**Day 1 — LinkedIn connection request:**
```
Cześć {{imie}} — pracuję z VP-ami Sprzedaży skalującymi zespoły.
Chętnie bym się połączył.
```

**Day 3 — Telefon voicemail (pod 30 sek):**
```
"Cześć {{imie}}, tu [imię] z [firma]. Wysłałem Ci wiadomość o ramp time —
pomogliśmy [similar firma] skrócić ramp time o 50%. Jeśli to temat,
mój numer to [numer]. Tak czy inaczej, odezwę się emailem."
```

**Day 4 — Email (inny kąt):**
```
Temat: sales ramp data

{{imie}} — jedna statystyka która mnie zaskoczyła: średnia polska
firma SaaS wydaje ~50k PLN żeby doprowadzić repa do quoty. Większość
tego kosztu jest niewidoczna (lost pipeline, manager time).

Mamy mapę kosztów ramp time dla polskich SaaS. Wysłać?

{{podpis}}
```

**Day 8 — Email (social proof):**
```
Temat: jak {{similar firma}} to naprawiła

{{imie}} — szybki case study który może rezonować:

{{similar firma}} traciła ~80k PLN/rok na ramp time. Po 90 dniach
z nami średni ramp spadł z 6 mies do 11 tyg.

Pełny breakdown to 2 min czytania. Chcesz?

{{podpis}}
```

**Day 11 — Breakup email:**
```
Temat: zamykam pętlę

{{imie}} — pisałem kilka razy, zakładam że timing nie jest dobry.
Kończę tutaj.

Jeśli ramp time stanie się priorytetem, łatwo mnie znaleźć.

Powodzenia z nowymi hire'ami.

{{podpis}}
```

## 30-day nurture (mid-market, wyższe ticket-y)

**Dla:** deal 5000+ PLN/mies, buyer VP, konta z jasnym ICP fit ale bez triggera.

Struktura: 3 telefony + 4 emaile + 3 LinkedIn touches przez 28 dni, wolniejsze tempo (3-4 dni gap), więcej cierpliwości. Pełny template w craig-lead-research-pl → Tier 2 kontakty.

**Expected:** 5-8% reply rate, wyższa jakość spotkań niż sprint.

## Branching logic

Sekwencje nie są liniowe. Buduj decision points:

### Jeśli reply (pozytywny)
- Stop sequence natychmiast
- Odpowiedz w ciągu 1h w godzinach pracy
- Przejdź do bookingu discovery call
- **Referuj ich konkretną odpowiedź** — nie wysyłaj generic booking link

### Jeśli reply (obiekcja)
- Stop sequence
- Obsłuż obiekcję (sales-context ma sekcję objections PL)
- Branch na podstawie typu obiekcji (zobacz sekcję "3 najczęstsze odpowiedzi" poniżej)

### Jeśli otworzyli ale nie odpowiedzieli (email)
- Czytają ale nie są przekonani. Zmień kąt.
- Przesuń następny telefon do przodu — znają już Twoje nazwisko
- Spróbuj krótszy, bardziej direct email

### Jeśli LinkedIn accept ale brak odpowiedzi na DM
- Odczekaj 3-5 dni, engage z ich contentem przed kolejnym DM
- **Nie DM drugiego pitchu.** Udostępnij coś wartościowego zamiast.
- Wykorzystaj connection do visibility — będą widzieć Twoje posty

### Jeśli zero engagement po pełnym sequence
- Inna persona w tej samej firmie
- Re-queue oryginalny kontakt na 90 dni z nowym triggerem
- Nie młot'uj tego samego człowieka tym samym podejściem

## 3 najczęstsze odpowiedzi (70%+ non-positive)

### "Nie teraz" / "Może w Q3" / "Timing nie ten"

Najcenniejsza obiekcja. Mówią że problem jest realny, ale priorytet nie dziś.

**Response:**
```
Rozumiem — timing to wszystko. Odezwę się w [konkretny miesiąc który
wymienili].

Jedno szybkie pytanie żebym nie marnował Twojego czasu kiedy wrócę:
co musiałoby się zmienić żeby to przeszło w priorytetach?

{{podpis}}
```

**Akcja:** Pause sequence. Task na dokładną datę którą podali. Kiedy re-engage: "Wspominałeś że Q3 może być lepszym timingiem — chciałem sprawdzić jak obiecałem." Dodaj do kwartalnego nurture track (miesięczne value-add emaile, zero pitchu).

### "Nie jestem zainteresowany" / "Proszę usunąć z listy"

Respektuj natychmiast. Jeden reply, zero pushback, zero "ale co jeśli".

**Response:**
```
Dzięki za szczerość {{imie}}. Usuwam Cię teraz.

Jeśli coś się zmieni, łatwo mnie znaleźć.
```

**Akcja:** Stop sequence. Closed-Lost. **NIE wprowadzaj do innej sekwencji. NIE każ innemu człowiekowi się odezwać.** Suppression list. Wyjątek: jeśli major trigger event w 6+ mies (nowa rola, akwizycja), **jeden** re-approach OK — ale z zupełnie innego kąta z jasnym powodem.

### "Wyślij więcej info" / "Możesz podesłać coś mailem?"

Najtrudniejsza. 80% czasu to brush-off w przebraniu zainteresowania. 20% czasu jest realne. Twoje zadanie: odróżnić.

**Response:**
```
Chętnie — żebym wysłał właściwą rzecz, co konkretnie byłoby najbardziej
pomocne?

Mam case study o [temat A], breakdown [temat B], albo mogę zrobić
szybkie podsumowanie jak pomogliśmy firmom takim jak {{firma}}.

Co byłoby najbardziej użyteczne?
```

**Akcja:** Pause sequence na 48h. Jeśli odpowiedzą konkretnie — są realni, wyślij dokładnie o co prosili, follow-up 2 dni później z meeting requestem. Jeśli nie odpowiedzą na pytanie wyjaśniające — traktuj jak "nie teraz", wznów sequence na następnym kroku.

## Kiedy przestać vs. kiedy drążyć

### Przestań gdy:
- Jawnie mówią "nie jestem zainteresowany" / "usuń"
- Skończyłeś pełny sequence z zero engagement
- Opuścili firmę
- Research pokazuje że są złym fit (zły ICP, świeży kontrakt konkurencji)
- 3x uderzyłeś w to samo konto w 12 mies bez traction

### Drąż gdy:
- Otwierali maile ale nie odpowiadali (zainteresowanie bez akcji)
- Zaakceptowali LinkedIn (pasywny sygnał)
- Nowy trigger event (runda, zmiana leadership)
- Znalazłeś lepszy kontakt w tej samej firmie
- Twój oryginalny outreach był słaby, masz materialnie lepszy kąt

## Template design sequence

```
═══════════════════════════════════════
SEQUENCE: [Nazwa]
Target: [Persona + firma profile]
Czas: [X dni]
Touchy: [X total across Y kanałów]
Cel: [Book discovery call / get referral / etc.]
Capacity: [X kontaktów/mies @ Y% meeting rate = Z spotkań]
═══════════════════════════════════════

DZIEŃ 1
  Kanał: [Email/Phone/LinkedIn]
  Akcja: [Konkretna]
  Content: [Krótki opis albo link do template]
  Branch: Jeśli [warunek] → [akcja]

DZIEŃ X
  ...

EXIT CRITERIA
  Positive reply → [Next step]
  "Nie teraz" → [Future task, quarterly nurture]
  "Nie zainteresowany" → [Remove, suppress]
  "Wyślij info" → [Qualify intent, pause 48h]
  Zero engagement po Dniu X → [New contact / Re-queue 90 dni]
═══════════════════════════════════════
```

## Najczęstsze błędy

- **Ta sama wiadomość, inny kanał.** Cold email jako LinkedIn DM to nie multi-channel. Każdy kanał ma własny natywny format i ton.
- **Poddawanie się po 3 touchach.** Średni polski deal: 6-10 touchy. Większość founderów stop at 3. Luka między tym to gdzie żyją deale.
- **Brak breakup emaila.** Breakup ma najwyższy reply rate. Nie pomijaj.
- **Ignorowanie stref czasowych.** Wysyłanie w niedzielę wieczorem, dzwonienie w piątek 14:45 — podstawowe błędy zabijające reply rates.
- **Jedna sequence dla wszystkich.** Tier 1 account zasługuje na inną sekwencję niż Tier 3.
- **Brak capacity math.** Budowanie pięknego 14-day sprintu bez policzenia ilu kontaktów trzeba wprowadzić miesięcznie.
- **Automatyzowanie wszystkiego.** Full automation bez manual phone + LinkedIn = email campaign z dodatkowymi krokami. Manualne touchy to gdzie biorą się spotkania.
- **Traktowanie "wyślij info" jako wygrana.** To zwykle brush-off. Zakwalifikuj przed świętowaniem.

## Powiązane skille

- **craig-lead-research-pl** — research przed sekwencją
- **craig-linkedin-outreach-pl** — LinkedIn touchy w sequence
- **cold-email** (natywny PL) — email touchy
- **craig-call-debrief-pl** — po rozmowie, update pipeline
- **craig-demo-script-pl** — demo po umówionym spotkaniu
- **craig-pipeline-review-pl** — tygodniowy przegląd kto gdzie jest w sekwencjach

---

**Credit:** Zaadaptowane z TheCraigHewitt/skills/outbound-sequence (~500 linii → ~245 linii, kompresja 51%). Wycięto: 60-day enterprise play ($250K+), SEP tool comparison (Outreach/Salesloft/Apollo/Instantly — enterprise), 10+ rep team daily workflow, industry benchmarks (healthcare, financial services). Dodano: polskie benchmarki reply rate, realistyczny 5 meetings/mies cel solo foundera, rozkład 14-day sprint jako domyślny dla polskich deal sizes 299-4999 PLN/mies.
