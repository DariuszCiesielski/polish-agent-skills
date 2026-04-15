---
name: craig-pipeline-review-pl
description: Tygodniowy przegląd pipeline sprzedażowego dla solo foundera polskiego SaaS B2B (deal sizes 299-4999 PLN/mies). Deal scoring (6 kryteriów × wagi), risk flags, zombie deals, quarterly purge, pipeline creation vs management, self-review protokół. Używaj gdy user mówi "przejrzyj pipeline", "oceń deale", "który deal jest martwy", "health check pipeline", "prep do poniedziałkowego review", "zombie deals", "coverage ratio". Bazuje na TheCraigHewitt/pipeline-review — wycięto team management/VP Sales perspective, dodano solo founder protokół + polskie deal stages (Lead → Discovery → Demo → Oferta → Close).
---

# Pipeline Review — solo founder polski SaaS B2B

**Źródło:** Adaptacja z [TheCraigHewitt/skills/sales/pipeline-review](https://github.com/TheCraigHewitt/skills) (Craig Hewitt, founder Castos). Wycięto: coaching repów, multi-rep review, VP Sales perspective. Dodano: solo founder self-review, polskie stages, 5k PLN/mies threshold dla multi-threading.

## Przed startem

Sprawdź `.agents/sales-context.md` — deal stages, średni sales cycle, ICP. Bez tego review to zgadywanie. Jeśli brak, zapytaj: stages, średni cykl (dni), średni deal size, cel miesięczny/kwartalny, ile otwartych deali.

## 6 zasad fundamentalnych

1. **Deal bez next step to NIE jest deal.** Jeśli nie masz skalendarowanego konkretnego kolejnego kroku z prospectem — to życzenie, nie deal. Flaguj każdy deal bez next step.
2. **Czas zabija deale.** Deal siedzący w tym samym stage 2x dłużej niż średnia dla tego stage — umiera. Powiesz sobie "jeszcze żyje". Prawdopodobnie nie żyje. Wymuś rozmowę.
3. **Single-threaded deale umierają. Dla polskiego SaaS próg to 5000 PLN/mies.** Powyżej tej kwoty jedna osoba to za mało — szukaj drugiego kontaktu. Poniżej — 1 decyzyjny wystarcza (micro-SaaS rzeczywistość: 10-50 osobowa firma, prezes decyduje).
4. **Coverage ratio to matematyka, nie nadzieja.** Potrzebujesz 3-4x pokrycia celu. Poniżej — nie masz problemu z pipelinem, masz problem z prospectingiem. Nie optymalizuj cienkiego pipeline'u.
5. **Najlepsze pytanie w review: "Dlaczego mieliby kupić od nas W TYM MIESIĄCU?"** Nie kwartale — polski cykl decyzyjny jest krótszy (1-2 tyg do 2 mies). Jeśli nie potrafisz odpowiedzieć konkretnym biznesowym powodem, close date jest fikcją.
6. **Pipeline creation i pipeline management to DWIE osobne konwersacje.** Jak spędzasz cały review na istniejących dealach, a zero na nowych leadach — już przegrałeś następny miesiąc. Podziel agendę 70/30.

## Polskie deal stages (template)

Standardowy pipeline dla MH / CMH / SEO / Lead Generator / podobne:

```
Lead → Discovery Call → Demo → Oferta → Zamknięte (Won/Lost)
 ↓         ↓              ↓      ↓
 3-5 dni   3-7 dni     7-14 dni  decyzja
```

**Healthy velocity:** Lead → Won w 3-6 tygodni. Powyżej 2 miesięcy = albo długi cykl (większy klient), albo deal umiera.

## Deal scoring framework

Oceniaj każdy deal 1-5 na tych kryteriach × waga:

| Kryterium | Waga | 1-2 (słabe) | 3-4 (rozwijające się) | 5 (silne) |
|---|---|---|---|---|
| **Ból zidentyfikowany** | 2x | Mgliście lub założony | Nazwany ale nie wymierny | Wymierny koszt biznesowy w PLN |
| **Władza zmapowana** | 2x | Nie wiem kto decyduje | Wiem ale nie spotkałem | Spotkałem decyzyjnego, zaangażowany |
| **Timeline potwierdzony** | 2x | Brak deadline'u | "Ten miesiąc" bez konkretów | Konkretna data + event biznesowy |
| **Champion aktywny** | 1.5x | Brak | Kontakt przyjazny ale pasywny | Champion sprzedaje wewnętrznie za nas |
| **Next step ustawiony** | 1.5x | Brak kolejnego spotkania | Tentatywne "odezwę się" | Skalendarowane z agendą |
| **Konkurencja znana** | 1x | Nie wiem kogo jeszcze oceniają | Wiem kogo, nie wiem jak wypadamy | Wiem + nasza differentiation działa |

**Scoring:**
- Max: **50 pkt**
- **40-50:** Silny deal — przyspieszaj
- **30-39:** Rozwija się — zamykaj luki
- **20-29:** Ryzyko — interwencja w tym tygodniu
- **Poniżej 20:** Prawdopodobnie martwy — szczera rozmowa czy inwestować dalej

## Risk flags (automatyczne)

| Flag | Definicja | Severity |
|---|---|---|
| **No next step** | Brak skalendarowanego kolejnego kroku | **Krytyczny** |
| **Aging** | W obecnym stage > 2x średnia | **Wysoki** |
| **Single-threaded** (deal >5k PLN/mies) | Tylko 1 kontakt | **Wysoki** |
| **Ghost champion** | Champion milczy 10+ dni | **Wysoki** |
| **Brak DM access** | Nie spotkałeś decyzyjnego | **Wysoki** |
| **Ból nie kwantyfikowany** | Nie potrafisz nazwać kosztu problemu w PLN | Średni |
| **Brak timeline anchor** | Brak eventu biznesowego wymuszającego pilność | Średni |
| **Konkurencja nieznana** | Nie wiesz kogo jeszcze oceniają | Średni |
| **Close date pchnięte 2x+** | Data zamknięcia przesunięta więcej niż 2 razy | **Wysoki** |
| **Stale CRM** | Kluczowe pola puste lub nieaktualizowane 14+ dni | Średni |

## Zombie deals — największe kłamstwo w pipeline'ie

Połowa deali w pipeline'ie to zombies — nie martwe, nie żywe, po prostu siedzą i sprawiają że coverage ratio wygląda lepiej niż jest.

**Deal to zombie gdy spełnia 2+ z tych kryteriów:**
- Brak dwukierunkowej komunikacji 21+ dni
- Close date pchnięte 3+ razy
- W tym samym stage dłużej niż 2x średnia
- Champion ucichł i nie masz alternatywnego kontaktu
- Oryginalny ból który napędzał deal już nie jest wspominany

### Protokół forced disqualification

Dla każdego zombie masz **jeden tydzień** na jedno z trzech:

1. **Wskrześ** — zdobądź żywą rozmowę (nie mail), potwierdź ból + timeline, ustaw konkretny next step
2. **Cofnij w stage** — jeśli realny ale się cofnął. "Oferta" gdzie champion umilkł to NIE oferta — to Discovery z powrotem
3. **Zabij** — Closed-Lost z reason code. Zdejmij z pipeline'u. Szczere pipe wygrywa więcej niż napompowane

### Quarterly purge

Raz na kwartał: każdy otwarty deal starszy niż średni sales cycle przechodzi obronę albo kill. **Target: usuwać 15-25% pipeline'u co kwartał.** Jeśli niczego nie usuwasz — nie jesteś szczery. Purge tymczasowo zaboli coverage ratio. O to chodzi — teraz znasz prawdziwą liczbę.

## Pytania stage-appropriate

### Discovery
- Jaki ból nazwali (ich słowami, nie Twoimi)?
- Kto zainicjował rozmowę — oni czy Ty?
- Jakie mają obecne rozwiązanie? Czego w nim nie lubią?
- Próbowali to już rozwiązać? Co się stało?
- Next step + data?

### Demo
- Czy decyzyjny był na demo?
- Jakie zadawali pytania? (Pytania ujawniają co ich obchodzi.)
- Kogo jeszcze oceniają?
- Konkretna reakcja — nie "podobało się"?

### Oferta
- Budżet potwierdzony? (Zatwierdzony, nie "znajdziemy")
- Spotkałeś economic buyera?
- Co by musiało się stać żeby to było TAK?
- Jest mutual close plan z datą?

### Stalled (dowolny stage)
- Kiedy ostatnia sensowna interakcja? (Odpowiedzi na maile się nie liczą.)
- Jakie było ostatnie zobowiązanie prospectu — dotrzymał?
- Champion ucichł? Próbowałeś innego kanału?
- **Gotów skonfrontować prospecta?** *"Mówię wprost — wygląda że to straciło momentum. Co się zmieniło?"*

## Solo founder self-review protokół

Jeśli jesteś solo founderem, musisz być i repem i VP Sales naraz. Trudniejsze niż brzmi — jesteś emocjonalnie przywiązany do własnych deali.

### Jak zrobić self-review szczerze

1. **Zaplanuj.** 30 minut w kalendarzu co poniedziałek rano. Traktuj jak spotkanie z szefem. Nie odwołuj.
2. **Oceń każdy deal frameworkiem powyżej.** Spisz oceny. Sam akt spisywania wymusza szczerość.
3. **Zadaj najtrudniejsze pytanie:** *"Gdyby ktoś inny opowiedział mi o tym dealu z tymi faktami, uwierzyłbym że jest realny?"* Jeśli nie — działaj.
4. **Test znajomego.** Opisz każdy deal na głos jakbyś tłumaczył sceptycznemu znajomemu. Gdzie zaczynasz dodawać "ale myślę że..." / "powiedzieli że może..." — tam są słabe punkty.
5. **Śledź accuracy swojego forecastu.** Na początku miesiąca zapisz co myślisz że zamkniesz. Na końcu porównaj. Historyczna accuracy to najlepsze antidotum na własny optymizm.

### Solo pipeline metryki (co tydzień)

```
Otwarte deale:                 [X]
Total pipeline value:          [X] PLN
Deale z next step:             [X] / [X] ([X]%)
Deale starsze niż 2x cycle:    [X]  ← zabij albo wskrześ
Nowe deale dodane w tygodniu:  [X]
Zamknięte w tygodniu:          [X] won / [X] lost
Pipeline creation run rate:    [X] nowych leadów/tydzień
```

Dyscyplina śledzenia tych liczb co tydzień, nawet jako solo operator, dzieli founderów którzy sprzedają od founderów którzy marzą że sprzedają.

## Pipeline creation vs management (70/30)

**Management (this month's deals)** — 70% czasu review:
- Czy deale idą stage-to-stage w oczekiwanym tempie?
- Czy stalled deale konfrontujesz czy po cichu "starzejesz"?
- Jakie deale zamykasz w tym tygodniu i jaki jest konkretny next step?

**Creation (next month's number)** — 30% czasu review:
- Ile nowych kwalifikowanych leadów weszło w tym tygodniu?
- Czy source jest balanced: inbound / outbound / referral?
- Czy blokujesz czas na prospecting, czy deal work konsumuje wszystko?

### Created vs. Closed ratio (śledź co tydzień)

```
Pipeline created:   [X] PLN
Pipeline closed:    [X] PLN
Pipeline removed:   [X] PLN
Net change:         [X] PLN
```

Jeśli **closed + removed > created** przez 2-3 tygodnie z rzędu — coverage decayuje. Odczujesz ból za 60-90 dni mimo że ten miesiąc wygląda OK.

## Output format

Po przeglądzie pipeline'u dostarcz:

1. **Snapshot** — total value, weighted, coverage ratio
2. **Deal scores** — każdy oceniony, posortowane po ryzyku
3. **Risk flags** — lista flagowanych deali po severity
4. **Zombie list** — co do zabicia / wskrzeszenia w 7 dni
5. **Top 3 akcje** — najważniejsze rzeczy do zrobienia w tym tygodniu
6. **Creation assessment** — czy nowy pipeline nadąża za closes + losses
7. **Rekomendacja** — czy aktualny pipeline wspiera cel, co robić jeśli nie

## Powiązane skille

- **craig-call-debrief-pl** — każdy debrief call feed'uje review, lepsze debriefy = konkretniejsze review
- **craig-lead-research-pl** — jeśli creation kuleje, wróć do prospectingu
- **craig-proposal-pricing-pl** — deale w stage "Oferta" potrzebują struktury oferty
- **discovery-call** — deale z niskim score na bólu/władzy miały słabe discovery, wróć do re-discovery
- **sales-context** — ICP i stages fundamentem review
