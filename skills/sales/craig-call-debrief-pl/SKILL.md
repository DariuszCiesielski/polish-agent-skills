---
name: craig-call-debrief-pl
description: Debrief rozmów sprzedażowych (discovery, demo, follow-up) dla solo foundera. Strukturalne wyciąganie insights, scoring engagement, wykrywanie buying signals i red flags, generowanie post-call emaila po polsku. Używaj gdy user mówi "zdebriefuj call", "jak poszła rozmowa", "przeanalizuj ten transkrypt", "właśnie skończyłem rozmowę z klientem", "zrób recap", "oceń jak poszło". Bazuje na metodologii TheCraigHewitt/call-debrief — oryginalny autor explicitnie wspiera use case solo foundera ("many users are solo founders reviewing their own calls with no manager"), więc adaptacja jest minimalna. Wycięto team-focused coaching scenarios i multi-stakeholder analysis (dla micro-SaaS polski rynek nieistotne).
---

# Debrief rozmowy sprzedażowej — solo founder

**Źródło:** Adaptacja z [TheCraigHewitt/skills/sales/call-debrief](https://github.com/TheCraigHewitt/skills). Autor sam dedykuje osobną sekcję dla solo founderów — dlatego ten skill jest w 90% zgodny z oryginałem, z polską lokalizacją i usunięciem team management.

## Przed startem

Sprawdź `.agents/sales-context.md` w projekcie — zawiera ICP, value prop, deal stages, proof points. Jeśli nie istnieje, zapytaj o podstawy:
1. Co sprzedajesz? (Produkt/usługa, typowy rozmiar deala, długość cyklu)
2. Kto był na callu? (Ich rola, firma, jak wszedł w pipeline)
3. Jaki etap dealu? (Discovery, demo, oferta, negocjacja, check-in)
4. Jaki był cel callu? (Co chciałeś osiągnąć)
5. Masz notatki albo transkrypt? (Wklej — zanalizuję)

## 6 zasad fundamentalnych

1. **Zbieraj świeżo.** Półtrwanie pamięci rozmowy to ~2 godziny. Po tym czasie nie wspominasz, tylko rekonstruujesz. Debrief od razu lub z transkryptu — **nigdy z pamięci następnego dnia**.

2. **Oddziel co się stało od tego co czułeś.** "Poszło świetnie" to uczucie. "Potwierdzili budżet 50k PLN, wskazali CEO jako decydenta, poprosili o ofertę do piątku" to **co się stało**. Najpierw udokumentuj fakty, dopiero potem oceniaj.

3. **Każda rozmowa MUSI produkować następny krok albo dyskwalifikację.** Jeśli opuściłeś call bez konkretnej, umówionej w kalendarzu akcji lub jasnego powodu dyskwalifikacji — rozmowa była niekompletna. Flaguj to mocno.

4. **Red flagi nie starzeją się dobrze.** Ten moment gdy uniknął pytania o budżet albo powiedział "omówimy to wewnętrznie"? Zapisz natychmiast. Za 3 tygodnie zapomnisz, a deal utknie z powodów których nie będziesz w stanie zdiagnozować.

5. **Patterns bite anecdotes.** Jeden słaby discovery call to pomyłka. Ten sam błąd na 5 callach to luka kompetencyjna. Śledź jedno i drugie.

6. **Porównaj z planem.** Jeśli przed callem zrobiłeś prep (discovery-call skill), debrief powinien jawnie sprawdzić: **czy osiągnąłeś to po co szedłeś?** Jeśli planowałeś potwierdzić budget authority i wyszedłeś bez zapytania — to jest finding.

## Template debriefu

### 1. Call Summary
```
Data:            [YYYY-MM-DD HH:MM]
Prospect:        [Firma — Imię Nazwisko, stanowisko]
Typ rozmowy:     [Discovery / Demo / Przegląd oferty / Negocjacja / Check-in]
Czas trwania:    [Faktyczne minuty]
Uczestnicy:      [Kto był, z obu stron]
Cel przed:       [Co chciałeś osiągnąć]
Wynik:           [Co się faktycznie stało — 2-3 zdania]
```

### 2. Plan vs rzeczywistość
Jeśli miałeś konkretne cele przed callem, oceń każdy:

| Cel | Status | Dowód |
|---|---|---|
| Potwierdzić budget authority | Zrobione / Częściowo / Nie zrobione | "CEO kontroluje to — 30k PLN discretionary" |
| Zidentyfikować proces decyzyjny | Nie zrobione | Nie zapytałem — wciągnęła mnie dyskusja o funkcjach |
| Ustalić timeline | Zrobione | "Musimy być live przed Q3" |

**To jest najważniejsza sekcja debriefu.** Call albo popchnął deal do przodu, albo nie. Reszta to szczegóły.

### 3. Kluczowe takeaways (3-5 bulletów)
Skupia się na:
- Nowe info o bólu, priorytetach, timeline
- Szczegóły procesu decyzyjnego (kto jeszcze, jakie zgody)
- Competitive intelligence (z kim jeszcze rozmawiają, co porównują)
- Zastrzeżenia i obawy
- Sygnały momentum lub stagnacji

### 4. Engagement scoring

Oceń każdy wymiar 1-5:

| Sygnał | Score | Dowód |
|---|---|---|
| **Klarowność bólu** | /5 | Czy wyrazili konkretny, skwantyfikowany problem? |
| **Autorytet potwierdzony** | /5 | Znasz decydenta i proces? |
| **Pilność / timeline** | /5 | Czy jest prawdziwy deadline lub wydarzenie? |
| **Siła championa** | /5 | Twój kontakt aktywnie sprzedaje wewnętrznie? |
| **Commitment next step** | /5 | Zgodzili się na konkretny, umówiony next step? |
| **Overall engagement** | /5 | Byli wciągnięci — pytali, dzielili się informacjami? |

**Razem: /30**

- **25-30:** Mocny deal momentum. Przyspiesz.
- **18-24:** Progresuje ale luki. Zidentyfikuj słabe sygnały i adresuj.
- **12-17:** Ryzyko. Potrzeba bezpośredniej rozmowy o fit i timing.
- **Poniżej 12:** Prawdopodobnie martwy. Zobacz sekcję "Kiedy call poszedł źle".

## Buying signals — wzorce językowe

**Mocne sygnały zakupowe (mentalnie wdrażają):**
- *"Opowiedz mi o wdrożeniu"* — są poza "czy" i w "jak". Jeden z najmocniejszych.
- *"Jak wygląda onboarding?"* — ta sama energia. Widzą siebie jako klienta.
- *"Możesz mi coś wysłać co mogę pokazać [innemu stakeholderowi]?"* — sprzedają wewnętrznie w Twoim imieniu. To champion.
- *"A jak wyglądałyby pierwsze 30/60/90 dni?"* — planują timeline.
- *"Jak to się integruje z [ich system]?"* — dopasowują Cię do swojego świata.

**Średnie sygnały (poważnie oceniają):**
- *"Jakie są ceny dla X użytkowników?"* — skalkulowują deal. Nie pytaliby gdyby nie byli zainteresowani.
- *"Jak się porównujecie do [konkurenta]?"* — są w aktywnej ewaluacji. Samo porównanie to sygnał.
- *"Próbowaliśmy coś podobnego wcześniej i nie zadziałało"* — paradoksalnie pozytywne. Mają ból I historię. Szansa: pokaż co robisz inaczej.
- *"Z kim z naszej branży już pracowaliście?"* — szukają social proof. Chcą kupić ale potrzebują "pozwolenia".

**Słabe/fałszywe sygnały (nie ufaj):**
- *"Bardzo ciekawe"* — grzeczność. Nic nie znaczy bez next step.
- *"Pomyślę o tym"* — stall. Nie myślą — liczą że odejdziesz.
- *"Wyślij mi materiały"* — zwykle grzeczna odmowa przebrana za zainteresowanie. Chyba że konkretyzują co i po co.

## Red flags — wzorce językowe

**Polski rynek micro-SaaS — częste red flagi:**

- **"Właściwie to tylko rozglądamy się"** → zero pilności. Ból za mały żeby działać. Kontra: "Co musiałoby się wydarzyć żeby to przeszło z rozglądania się do priorytetu?"
- **"Musimy to omówić wewnętrznie" bez daty follow-upu** → tu deale umierają. Kontra: "Rozumiem. Kiedy się spotykacie? Mogę wysłać summary żeby ułatwić rozmowę"
- **"Musimy to omówić z księgową/żoną/wspólnikiem"** → typowy polski blokier decyzyjny micro-biznesu. Kontra: "Co konkretnie ta osoba chciałaby wiedzieć? Mogę przygotować materiał dopasowany"
- **"Możesz po prostu wysłać ofertę?"** przed zakończeniem discovery → chcą porównać ceny, nie rozwiązania. Nie zbudowałeś wystarczającej wartości.
- **"Nie jestem decydentem ale mogę wpłynąć"** → może. Ale jeśli nie możesz dotrzeć do decydenta, Twój "wpływowy" też prawdopodobnie nie może.
- **Tylko jedna osoba zaangażowana na callu kilku osób** → milczący są albo niezainteresowani albo przeciwni. Cisza to nie zgoda.
- **Ciągle przekładają spotkania** → Twój deal nie jest priorytetem. Raz = życie. Dwa = wzorzec. Trzy = sygnał.
- **"Jaka jest wasza najlepsza cena?"** przed zrozumieniem wartości → komodytyzują Cię. Nie różnicujesz się wystarczająco.
- **Konkurent już w POC lub late-stage** → jesteś column B (oferta porównawcza). Bądź szczery o szansach.
- **"Czy to działa po polsku?" jako DRUGIE pytanie** → klient nie widział produktu albo nie zrozumiał. Wróć do demo.

## 7. Action items

Każdy action item ma właściciela i datę. "Follow up wkrótce" to nie action item. "Wysłać case study do Anny do czwartku 17:00" jest.

| # | Akcja | Właściciel | Deadline |
|---|---|---|---|
| 1 | | | |
| 2 | | | |
| 3 | | | |

## 8. Post-call email (wysłać w ciągu 2h)

**Template polski:**

```
Temat: Następne kroki z naszej rozmowy — [konkretny temat]

Dzień dobry [Imię],

Dziękuję za dzisiejszą rozmowę. Oto co wyniosłem:

**Co usłyszeliśmy:**
- [Ich top 1-2 pain points, ich językiem, nie Twoim]
- [Wynik który chcą osiągnąć]

**Co omówiliśmy:**
- [Kluczowe punkty rozwiązania — max 2-3 bullety]

**Następne kroki:**
- [Konkretny next step z datą — "Dzielisz się tym z dyrektorem do czwartku"]
- [Twoja akcja — "Wyślę harmonogram wdrożenia do końca jutra"]

Jeśli coś pominąłem lub źle zrozumiałem — daj znać.

Pozdrawiam,
[Imię]
```

**Dlaczego to działa:** Udowadnia że słuchałeś. Tworzy pisemny zapis next stepu (trudniej zignorować). Daje im "amunicję" do rozmowy wewnętrznej. I zmusza Cię do skrystalizowania co faktycznie się stało — czyli to jest sam debrief.

**Wyślij w ciągu 2 godzin.** Nie jutro. Nie "jak znajdę czas". Pamięć klienta też się zaciera.

## Kiedy call poszedł źle — kill process

Nie każda rozmowa odsłania zdrowy deal. Czasem call to dowód że deal jest martwy. Wczesne rozpoznanie to umiejętność — i oszczędza tygodnie zmarnowanego pipeline'u.

### Sygnały że deal jest martwy
- Byli grzeczni ale zadali **zero** pytań o Twoje rozwiązanie
- "Decydent" odsyłał wszystko do kogoś kogo nie było na callu
- Pytanie o timeline: "Nie ma pośpiechu" lub "Kiedyś w przyszłym roku"
- Spędzili call na tematach niezwiązanych z tym co rozwiązujesz
- Ton głosu/body language był płaski — odhaczali punkty, nie angażowali się
- Ujawnili ograniczenie które czyni ich non-fit (za mali, zły stack, brak budżetu do 2027)
- Zdałeś sobie sprawę w połowie callu że to czego potrzebują i to co sprzedajesz to różne rzeczy

### Kill process

1. **Nazwij wprost.** "Na podstawie tej rozmowy nie widzę tego dealu jako poruszającego się do przodu. Oto dlaczego."
2. **Skategoryzuj powód.** Zły ICP? Brak bólu? Brak budżetu? Konkurent za daleko? Bądź precyzyjny.
3. **Decyzja: kill czy shelf?** Kill = wywal z pipeline. Shelf = nurture sequence z konkretnym triggerem do re-engage (np. "Wróć w Q4 gdy budżet się odnawia").
4. **Wyślij profesjonalny breakup email** (template niżej).
5. **Wyciągnij lekcję.** Zły ICP → update targetowania. Luka funkcji → zaloguj. Słaba kwalifikacja → napraw proces discovery.

### Breakup email (template polski)

Wyślij w ciągu 24h. Nie daj martwym dealom leżeć.

```
Dzień dobry [Imię],

Dziękuję za [dzisiejszą/wczorajszą] rozmowę. Na podstawie tego co 
omówiliśmy widzę że [konkretny powód — timing, fit, priorytety] 
powoduje że to nie jest odpowiedni moment.

Nie chcę zmarnować Państwa czasu gonieniem czegoś co nie ma sensu.
[Odezwę się w Q4 / zostawię Państwa w newsletterze / wrócę gdy 
wdrożymy funkcję X]. W międzyczasie [tu zasób] może pomóc z 
[problem który wspomnieli].

Jeśli coś się zmieni — wiedzą gdzie mnie znaleźć.

Pozdrawiam,
[Imię]
```

**Dlaczego to wysłać:** 1) to profesjonalne (większość sprzedawców po prostu znika), 2) tworzy czysty powód do re-engage, 3) część klientów odpisuje "właściwie poczekaj" bo breakup reframe'uje wartość. Ale nie wysyłaj dla tego trzeciego. Wysyłaj bo to właściwe.

**Najtrudniejsza umiejętność w sprzedaży to odpuścić deal w który zainwestowałeś czas.** Debrief jest miejscem gdzie podejmujesz tę decyzję.

## Solo founder — self-coaching protokół

Jeśli debriefujesz własne calle bez managera, bez zespołu sprzedażowego, bez nikogo kto da Ci szczerą opinię — dyscyplina debriefu staje się jeszcze ważniejsza. Jesteś sprzedawcą, managerem sprzedaży i CEO w jednym.

### Protokół

1. **Nagrywaj każdą rozmowę.** Nie możesz obiektywnie debriefować z pamięci. Twój mózg wytnie niewygodne momenty — gdzie mówiłeś za długo, pytanie które zbłaźniłeś, zastrzeżenie które pominąłeś. Nagranie nie kłamie.
2. **Debriefuj pisemnie, nie w głowie.** Samo pisanie wymusza konkretność. "Poszło ok" staje się "Potwierdziłem ból ale zapomniałem zapytać o budżet, next step był niejasny". To jest coaching.
3. **Test "gdybym oglądał kogoś innego".** Przeczytaj transkrypt i zapytaj: gdyby to był sprzedawca w moim zespole, co bym mu powiedział? Odpowiedzi są zwykle oczywiste — i niewygodne.
4. **Śledź wzorce między rozmowami.** Po 10 debriefach spójrz wstecz. Czy konsekwentnie:
   - Mówisz za dużo? (Większość solo founderów tak — to Twoje dziecko, jesteś podekscytowany)
   - Pomijasz rozmowy o budżecie? (Founderzy nie cierpią pytań o pieniądze)
   - Akceptujesz niejasne next stepy? ("Zdzwonimy się w przyszłym tygodniu" to NIE jest next step)
   - Pitchujesz przed diagnozą? (Pierwszy błąd sprzedażowy founderów)
5. **Znajdź "debrief buddy".** Nawet jeśli jesteś solo — znajdź jedną osobę: founder znajomy, advisor, peer — i róbcie miesięczne wzajemne review calli.

### Częste pułapki polskich solo founderów

- **"Demo produktu" przebrane za discovery.** Kochasz produkt, zbudowałeś go — więc 80% callu pokazujesz funkcje zamiast pytać. Debrief to odsłoni jeśli jesteś szczery.
- **"Konsulting" gdzie oddajesz rozwiązanie za darmo.** Tak bardzo chcesz udowodnić kompetencję że rozwiązujesz ich problem na callu i nie zostawiasz powodu do zakupu. Debrief question: "Uczyłem ich łowić ryby zamiast sprzedawać lekcje?"
- **"Miła rozmowa" bez commercial outcome.** Founderzy z tła non-sales mają świetne rozmowy prowadzące donikąd. Debrief question: "Przepchnąłem to w stronę commercial outcome czy po prostu miło porozmawiałem?"
- **"Wyślę później" prokrastynacja.** Skończyłeś call, 16:00, masz inne rzeczy. Follow-up email nie wychodzi do czwartku. Konkurent wysłał swój w ciągu godziny. Debrief question: "Czy wysłałem follow-up w ciągu 2 godzin? Jeśli nie — dlaczego?"
- **"Wyglądali na zainteresowanych" iluzja.** Bez strukturalnego debriefu founderzy defaultują do optymizmu. Klient był miły → deal musi żyć. Rób engagement scoring szczerze. Score 14 nie staje się 22 bo lubisz tego człowieka.

## Batch debrief (po tygodniu/dniu kilku rozmów)

1. Zrób individualne debriefy dla każdego callu
2. Dodaj sekcję **Wzorce** na końcu:
   - Wspólne zastrzeżenia słyszane na wielu callach
   - Powtarzające się pain points (waliduje lub kwestionuje Twoje ICP)
   - Luki procesowe pojawiające się wielokrotnie
   - Wzorce umiejętności do poprawy
3. **Oceń się:** "Z X calli w tym tygodniu, ile wyprodukowało konkretny next step?"
4. **Velocity check:** Które calle popchnęły deale? Które zatrzymały?
5. **Self-score trend** (jeśli to rutyna):
   - Średni engagement score tym tygodniu vs ostatnim
   - Liczba zabitych deali (healthy pipeline hygiene, nie porażka)
   - Procent calli z udokumentowanymi celami przed-callowymi
   - Follow-up email wysłany w 2h (yes/no per call)

## Powiązane skille

- **discovery-call** — planuj call przed nim. Discovery prep zapobiega złym debriefom. Debrief zawsze porównuj z celami z discovery-call
- **craig-proposal-pricing-pl** — jeśli debrief ujawnia wrażliwość cenową lub budżet, użyj tych sygnałów przy budowaniu oferty
- **sales-context** — bez tego debrief jest oceniany na próżno
- **pipeline-review** — debriefy callów bezpośrednio zasilają pipeline review
- **objection-handling** — zastrzeżenia których nie obsłużyłeś dobrze? Zbuduj playbooki
