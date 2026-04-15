---
name: craig-demo-script-pl
description: Skrypty demo produktowych dla polskiego SaaS B2B micro-small. Story arc (discovery recap → 3 cykle pain→solution→outcome→proof → close), feature-to-outcome mapping, disaster recovery, multi-stakeholder handling, competitive positioning. Używaj gdy user mówi "napisz skrypt demo", "pomóż przygotować się do demo", "pokaż produkt klientowi", "POC walkthrough", "zaplanuj prezentację produktu". Bazuje na TheCraigHewitt/demo-script — wycięto 60-min enterprise demos, multi-stakeholder 5+, dodano polski solo founder context (zwykle 1 klient, 20-30 min max).
---

# Demo Script — polski SaaS B2B

**Źródło:** Adaptacja z [TheCraigHewitt/skills/sales/demo-script](https://github.com/TheCraigHewitt/skills). Wycięto: 60-min enterprise demos, 5+ stakeholder handling, corporate procurement checklist demos. Dodano: polski realizm (1-2 osoby na demo, 20-30 min, founder sprzedaje sam), polskie językowe patterns recapu.

## Przed startem

Sprawdź `.agents/sales-context.md` — value prop, differentiators, proof points. Przejrzyj też notatki z discovery call (craig-call-debrief-pl). **Demo jest tylko tak dobre jak poprzedzające je discovery.**

## 6 zasad fundamentalnych

1. **Nigdy nie zaczynaj od produktu. Zacznij od ich problemu.** Pierwsze 3-5 minut każdego demo to recap tego co słyszałeś w discovery — ich sytuacja, ból, koszt status quo. Kiedy kiwają głowami "tak, dokładnie", zyskałeś prawo pokazać rozwiązanie.
2. **Pokazuj outcome, nie feature.** Ludzie nie kupują oprogramowania ani dashboardów. Kupują **mniej godzin zmarnowanych, więcej umówionych spotkań, mniej ryzyka w pipeline**. Każdy screen odpowiada na "i co z tego?" zanim klient musi zapytać.
3. **Mniej features, więcej głębi.** Pokaż 3-4 rzeczy które bezpośrednio rozwiązują ich pains. Głęboko w tym co istotne > szeroko we wszystkim. Repowie którzy pokazują 15 features zamykają mniej niż ci co pokazują 5.
4. **Tailor bezlitośnie.** Generic demo = failed demo. Użyj ich nazwy firmy, ich branżowej terminologii, ich danych jeśli to możliwe. Jeśli pokazujesz dashboard — wypełnij go liczbami pasującymi do ich skali.
5. **Kontroluj flow, nie audience.** Miej skrypt. Trzymaj się go. Ale gdy ktoś zadaje pytanie, obsłuż — nie odkładaj wszystkiego do "pokryję to później", bo stracisz ich uwagę.
6. **W polskim B2B micro-SaaS 20-30 min to standard.** Nie enterprise 60 min. Klient daje Ci pół godziny, i w tym czasie musisz: recap + 3 cycles + close. Budżet czasu to **prawo, nie sugestia**.

## Format demo: live vs. slajdy vs. nagrane

### Live product demo (domyślne dla PL micro-SaaS)
- Najwyższy impact, najwyższe ryzyko. Wszystko może się zepsuć.
- Wymaga czystego środowiska demo (zobacz pre-demo checklist)
- Najlepsze dla deali gdzie produkt "sprzedaje się sam" gdy widzą go w akcji

### Slide-supported demo
- Gdy demo dla zarządu/CEO którzy nie chcą klikać
- Lead 3-5 slajdami (discovery recap → architektura → approach), potem 1-2 kluczowe workflow live
- Slajdy zawierają outcomes i proof points, NIE feature lists
- Nie czytaj slajdów. To anchor dla Twojej narracji.

### Recorded / async demo
- Gdy ktoś nie może być na live, albo "prześlij mi coś żeby podesłać zarządowi"
- 5-8 minut, skupione na ich 2-3 topowych bólach
- Narracja jak na live, nie marketing video
- Użyj ich nazwy firmy i konkretnej sytuacji
- Wyślij przez trackable link (Loom) — zobaczysz czy obejrzeli i jak daleko
- Follow-up gdy obejrzą: "Widziałem że przejrzałeś walkthrough — co Cię najbardziej interesuje?"

## Pre-demo checklist — środowisko

- [ ] Demo environment wstał i działa. Test **1h przed rozmową**, nie 1 min.
- [ ] Sample data realistyczne i istotne. Healthcare? Nie pokazuj retail dane.
- [ ] Jeśli załadowałeś ich dane (pilot, sandbox) — sprawdź czy się załadowały. Brakujące dane mid-demo = śmierć credibility.
- [ ] Integracje które pokazujesz są podłączone i działają
- [ ] Twoje konto ma właściwe permissions. Nic gorszego niż "hmm, zwykle nie widzę tego błędu"
- [ ] Usuń test labels, dummy użytkowników "Test User", wszystko co wygląda half-baked
- [ ] Motyw/view najbardziej profesjonalny
- [ ] **Wyłącz powiadomienia** (Focus Mode na Mac, Focus Assist Windows). Żadne Slacki, maile, polskie SMS-y
- [ ] Zamknij karty i aplikacje których nie potrzebujesz. Incognito window z tylko potrzebnymi kartami.
- [ ] Wyczyść history bar przeglądarki jeśli pokazuje często odwiedzane
- [ ] Backup screenshots folder na pulpicie — każdy kluczowy workflow jako statyczny obraz na wypadek awarii

## Demo structure: story arc (20-30 min)

### Akt 1: Setup (5 min)

**Recap discovery.** Udowodnij że słuchałeś.

```
"Zanim cokolwiek pokażę, chcę się upewnić że dobrze zrozumiałem.
Powiedziałeś że {{pain 1}}, co powoduje {{impact}}. Obecnie {{current
process}}, i to Wam {{consequence}}. A gdybyście mogli {{desired
outcome}}, to dla Was byłoby {{value}}. Dobrze zrozumiałem? Czegoś
brakuje?"
```

To robi 3 rzeczy: potwierdza że słuchałeś, re-aktywuje ich ból, sprawia że kiwają głowami ZANIM pokażesz pierwszy screen.

**Ustaw agendę:**
```
"Pokażę Ci dziś trzy rzeczy:
1. Jak rozwiązujemy {{pain 1}}
2. Jak obsługujemy {{pain 2}}
3. Jak firmy jak Wasza zwykle dostają wyniki w {{timeframe}}
Potem porozmawiamy o następnych krokach. Brzmi dobrze?"
```

### Akt 2: Demonstration (15-20 min)

Dla każdego pain pointu — ten pattern:

**1. Przypomnij ból** (10 sek)
*"Wspominałeś że Twój zespół traci 6h tygodniowo na ręczne {{task}}."*

**2. Pokaż rozwiązanie** (2-3 min)
Przejdź przez konkretny workflow który eliminuje ten ból. Narracja. **Ich język, nie Twoje nazwy features**.

**3. Połącz z outcome** (30 sek)
*"Więc zamiast 6h ręcznej pracy, to zajmuje ok 15 min. Dla zespołu 8 osób to ~45h miesięcznie z powrotem."*

**4. Wrzuć proof point** (15 sek)
*"{{Klient}} z {{podobna branża}} widział dokładnie to — skrócili ten proces z całego dnia do mniej niż godziny."*

**5. Check-in** (10 sek)
*"Czy to pasuje do tego z czym się mierzycie? Zadziałałoby w Waszym środowisku?"*

Powtórz dla każdego pain pointu. **3 pain points = 3 cycles.**

### Akt 3: Proof & close (5 min)

**Social proof:** 1-2 case studies z polskiego rynku (albo similar-size fit).

**Summary:**
```
"Podsumowując — pokazaliśmy jak {{produkt}} rozwiązuje {{pain 1}}
przez {{outcome 1}}, obsługuje {{pain 2}} przez {{outcome 2}}, i daje
{{outcome 3}}. Z tego co mówiłeś brzmi że {{pain 1}} jest największym
priorytetem. Dobrze?"
```

**Next step:** Zaproponuj konkretną akcję.
```
"Następny krok dla większości firm na tym etapie to {{propozycja/
technical deep-dive/pilot/spotkanie z CEO}}. Umawiamy to w kalendarzu?"
```

## Feature-to-outcome mapping (ZAWSZE przed demo)

Nigdy nie pokazuj feature bez wypełnionego wiersza.

| Ich ból | Feature do pokazania | Outcome / "I co z tego" | Proof point |
|---|---|---|---|
| [Discovery pain 1] | [Feature] | [Business outcome + metryka] | [Customer story] |
| [Discovery pain 2] | [Feature] | [Business outcome + metryka] | [Customer story] |
| [Discovery pain 3] | [Feature] | [Business outcome + metryka] | [Customer story] |

**Jeśli nie możesz wypełnić kolumny "Ich ból" dla feature'a — nie pokazuj go.**

## Disaster recovery

Rzeczy się psują podczas demo. Pytanie nie *czy* tylko *jak odzyskasz*.

### Feature crashuje / nie ładuje się
- **Nie panikuj. Nie przepraszaj za dużo.** Jedno spokojne zdanie: *"Wygląda że dziś jest wolne. Pokażę to w inny sposób."*
- Miej **backup screenshots albo nagranie** każdego kluczowego workflow. Folder na pulpicie, gotowy do share.
- Jeśli feature jest krytyczny i zepsuty, nie forsuj: *"Ten feature akurat najbardziej oszczędza czas zespołu — chcę żebyś zobaczył go działającego. Wyślę Ci nagranie zaraz po rozmowie."*
- Zamień na trust moment: *"Wolę żebyś zobaczył to działające niż żebym troubleshoot'ował na żywo. Nie marnuję Twojego czasu."*

### Integracja failuje
- Jeśli integracja miała pullować dane z ich systemu i nie działa: *"Połączenie czka. Pokażę to na naszych sample data — workflow jest identyczny, tylko patrzymy na inne liczby."*
- Miej **pre-loaded result** gotowy. Jeśli integracja miała pullować CRM dane — miej screenshot jak to wygląda gdy działa.

### Video/audio/screen share problems
- Backup screen share: Zoom → Google Meet, lub odwrotnie
- Choppy video: *"Wyłączam kamerę żeby poprawić quality — żeby demo przeszło czysto."*
- Awaria audio: **zawsze miej numer prospecta**. Zadzwoń i narraj podczas gdy oglądają screen share.

### Prospect pyta o coś co jest zepsute
- Known issue: *"Wiemy o tym, fix planowany w {{konkretny timeframe}}. Obecnie klienci obsługują to tak..."*
- Nowe: *"Nie widziałem tego wcześniej — nasz technical team odezwie się z konkretami. Odpowiem Ci do {{konkretna pora}}."*
- **Nigdy nie mów "to nie powinno się stać".** Stało się. Zobaczyli.

## Recording i follow-up

### Czy nagrywać demo?
**Zwykle tak.** Zawsze pytaj: *"Czy mógłbym to nagrać, żeby móc udostępnić komuś z zespołu kto nie mógł być na rozmowie?"*

**Benefity:**
- Champion może share'ować wewnętrznie z ludźmi których nie widziałeś
- Możesz review'ować własne demo performance
- Tworzy asset zamiast "możemy zrobić jeszcze jedno demo dla naszego CEO?"

**Nie nagrywaj jeśli:** powiedzą nie (nie pushuj), pokazujesz ich poufne dane, demo idzie źle i nie chcesz dowodów.

### Post-demo follow-up email (w ciągu 2h)

1. **Co pokazałeś** — 3-4 buletki, outcome-focused (nie "pokazałem dashboard feature" tylko "jak {{produkt}} daje real-time visibility w pipeline, eliminując 6h/mies ręcznego raportowania")
2. **Co powiedzieli** — kluczowe reakcje, concerns, pytania które parknąłeś. **W ich słowach.**
3. **Next step** — konkretna akcja, data, uczestnicy
4. **Recording link** — jeśli nagrałeś
5. **Highlight reel** — jeśli demo było >30 min, rozważ 3-5 min clip z 3 kluczowymi momentami. To champion faktycznie forward'uje do szefa.

## Multi-stakeholder demos (rzadkie w PL micro-SaaS, ale wartościowe)

### Executive + practitioner w jednym pokoju
- **Lead z business outcomes** (executive to słyszy)
- **Pokaż wystarczająco produktu** by usatysfakcjonować practitionera
- **Flaguj ease of implementation** — executives martwią się disruption, practitioners learning curve
- Adresuj executive'a po imieniu gdy pokazujesz ROI. Adresuj practitioner gdy pokazujesz workflow.

### Technical evaluator
- Głębiej na architecture, integracje, security, data handling
- Pomiń business case — już wiedzą czemu ewaluują
- **Bądź szczery o limitations.** Technical ludzie szanują "nie robimy tego" bardziej niż "pewnie moglibyśmy"
- Miej gotowe odpowiedzi na: API access, data export, SSO, uptime SLA, compliance (RODO, ISO)

### Executive-only demo
- Cut product walkthrough o 50%
- Double proof points i ROI discussion
- Pokaż dashboards i raporty, nie workflow details
- Skup się na: time to value, przewaga konkurencyjna, redukcja ryzyka, efektywność zespołu
- **Pod 20 min jeśli możliwe.**
- Executives przerwą strategic questions. **Witaj je — są zaangażowani.** Executive który siedzi cicho przez 30 min jest znudzony albo już zdecydował nie.
- Zakończ jasnym decision question: *"Na podstawie tego co widziałeś — warto to pociągnąć dalej?"* Executive szanują bezpośredniość.

## Competitive positioning podczas demo

**Zasady:**
1. **Nigdy nie trash'uj konkurenta po nazwisku bez powodu.** Wyglądasz na niepewnego.
2. **Gdy oni sami wspomną konkurenta, acknowledge + pivot.** *"Są solidni w {{X}}. Gdzie jesteśmy inni to {{Y}}, co ma znaczenie kiedy {{ich specyficzna sytuacja}}."*
3. **Stawiaj pułapki pytaniami.** Przed pokazaniem differentiating feature zapytaj: *"Jak ważne dla Waszego zespołu jest {{capability}}?"* Gdy powiedzą że ważne — pokaż. Nieobecność tej funkcji u konkurenta staje się oczywista bez Twojego komentarza.
4. **Używaj switchover stories.** *"Mamy 15 klientów którzy przeszli z {{konkurent}}. Najczęściej mówią {{insight}}."* Bardziej wiarygodne niż feature comparison.

## Obsługa pytań mid-demo

**Odpowiadaj od razu jeśli:**
- Bezpośrednio dotyczy tego co pokazujesz
- Pytający to najbardziej senior osoba w pokoju
- To deal-breaker (cena, integracja, bezpieczeństwo)

**Park for later jeśli:**
- Dotyczy feature'a który planujesz pokazać za 5 min
- Skasowałoby narrację dla innych stakeholderów
- Deep technical w executive demo

**Jak parkować z gracją:**
*"Dobre pytanie. Akurat pokrywam to za ok 5 min kiedy pokażę {{sekcja}}. Mogę do tego wrócić? Chcę dać temu pełny kontekst."*

**Napisz to widocznie** (shared notes albo notepad). Wróć do tego. Jeśli zapomnisz — oni nie.

## Najczęstsze błędy

- **Feature tour.** Pokazywanie wszystkiego zamiast tego co ma znaczenie. Śmierć przez tysiąc features.
- **Brak discovery recap.** Skoczenie prosto w produkt. Audience nie wie czemu ma dbać.
- **Ignorowanie pytania.** Każde deferowanie do "follow-upu" sygnalizuje że nie znasz własnego produktu.
- **Demo tylko happy path.** Tylko perfect scenario. Mądrzy kupujący pytają "co się dzieje jak X idzie źle?"
- **Running over time.** Jesteś 25 min w 30-minutowym demo → stop i close. Potrzebujesz czasu na next steps.
- **Nie check-in.** 15 min bez ani jednego pytania. Straciłeś ich.
- **Brudne środowisko.** Polskie powiadomienia Slack, test data z imionami "Janek Testowy", personal bookmarks widoczne.
- **Brak disaster recovery.** Feature się psuje → zamarzasz. **Zawsze miej fallback.**
- **Kończenie bez next step.** *"Dzięki, wyślę info"* to NIE close. Zaproponuj coś konkretnego.

## Output format

Budując demo script, dostarcz:

1. **Demo brief** — prospect context, stakeholderzy, czas, discovery pain points
2. **Feature-to-outcome map** — wypełniona tabela
3. **Scripted opening** — discovery recap + agenda (customized)
4. **Demo flow** — scene-by-scene walkthrough z talking points, transitions, check-in questions
5. **Competitive positioning notes** — jeśli konkurenci w grze
6. **Closing script** — summary + next step ask
7. **Parking lot prep** — prawdopodobne pytania i czy odpowiedzieć czy parkować
8. **Disaster recovery plan** — backup screenshots/recordings dla każdego pokazywanego feature'a live
9. **Follow-up email draft** — post-demo recap template z polami pre-filled z discovery

## Powiązane skille

- **craig-call-debrief-pl** — review notatek z discovery PRZED demo
- **sales-context** — value prop + differentiators
- **craig-proposal-pricing-pl** — najczęstszy next step po udanym demo
- **discovery-call** (natywny PL) — dobra discovery = dobre demo
- **craig-pipeline-review-pl** — deal post-demo aktualizacja w pipeline

---

**Credit:** Zaadaptowane z TheCraigHewitt/skills/demo-script (~400 linii → ~215 linii, kompresja 46%). Wycięto: competitive bake-off 60 min enterprise demos, checklist-driven RFP demos dla procurement, multi-stakeholder 5+ pokoje, US Vidyard/Loom pricing. Dodano: polski realizm 20-30 min demo dla micro-SaaS, founder sprzedaje sam (jeden punkt uwagi), polskie pre-demo checklist (wyłącz polskie powiadomienia Slack/SMS), polski language patterns recapu z "kiwają głowami".
