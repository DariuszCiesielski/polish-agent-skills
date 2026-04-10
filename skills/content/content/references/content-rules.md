# Zasady pisania treści — Quality Gates

> **Spis treści:** Minimalne wymagania wg typu | Hard Rules | Źródła (hierarchia) | Formatowanie | Answer-First Pattern | Citation Capsule | Burstiness | Zakazane słowa AI (127+) | Reguły stylistyczne anty-AI | Quality Gate J

## Minimalne wymagania wg typu

| Typ artykułu | Min. słów | Max słów | H2 sections | Źródła |
|-------------|-----------|----------|-------------|--------|
| How-to | 2000 | 2500 | 5-8 | 3+ |
| Listicle | 1500 | 2000 | N (ilość pozycji) | 2+ |
| Case study | 2000 | 3000 | 6-8 | 1+ (klient) |
| Comparison | 1500 | 2000 | 4-6 | 2+ |
| Pillar page | 3000 | 4000 | 8-12 | 5+ |
| Product review | 1500 | 2500 | 5-7 | 1+ (produkt) |
| News analysis | 800 | 1500 | 3-5 | 2+ |
| FAQ/knowledge base | 1500 | 2000 | 10-20 (pytań) | — |

## Hard Rules (zero tolerancji)

1. **Zero sfabrykowanych statystyk** — każda liczba musi mieć źródło. "Badania pokazują" BEZ cytatu = niedopuszczalne.
2. **Paragrafy max 150 słów** — rozbij dłuższe na mniejsze lub dodaj listę/tabelę.
3. **H hierarchy bez skoków** — H1→H2→H3, nigdy H1→H3.
4. **Alt text na każdym obrazie** — opisowy, nie "obraz1".
5. **Max 1 self-promotion per artykuł** — brand mention w kontekście, nie reklama.
6. **Źródła tier 1-3** — cytuj z autorytatywnych źródeł, nie z random blogów.

## Źródła — hierarchia wiarygodności

| Tier | Typ | Przykłady |
|------|-----|-----------|
| **1** | Badania naukowe, raporty branżowe | Ahrefs, Semrush, Google Search Central, McKinsey |
| **2** | Oficjalne blogi, media branżowe | Moz Blog, Search Engine Journal, HubSpot |
| **3** | Doświadczeni praktycy | Znani eksperci z imienia, case studies firm |
| **4** | Fora i community | Reddit, Quora (z zastrzeżeniem "wg dyskusji na...") |
| **5** | AI-generated/uncertain | Unikaj; jeśli musisz, zaznacz "wg dostępnych danych" |

## Formatowanie

### Nagłówki
- H2 co 300-400 słów
- H2 jako pytanie lub stwierdzenie z keyword
- H3 jako podpunkty sekcji H2

### Listy
- Bullet points dla 3+ elementów bez kolejności
- Numbered lists dla kroków/rankingów
- Max 7-9 elementów per lista (potem podziel)

### Tabele
- Używaj dla porównań, danych liczbowych, specyfikacji
- Max 5-6 kolumn (czytelność na mobile)
- Zawsze nagłówki kolumn

### Cytaty i callouts
- Blockquote dla dosłownych cytatów z atrybutem
- Callout box dla ważnych informacji (TIP, WARNING, NOTE)

## Answer-First Pattern

Każdy H2 zaczyna się od **konkretnej odpowiedzi z danymi** w 40-60 słów:

```markdown
## Jak często aktualizować treści na blogu?

Według badania Orbit Media (2025), blogi aktualizowane co najmniej raz w tygodniu
generują 2.5x więcej ruchu organicznego niż te publikujące rzadziej niż raz w miesiącu.
Dla polskiego rynku optymalna częstotliwość to 2-3 artykuły tygodniowo, z aktualizacją
starszych treści co 90 dni.
```

**NIE:**
```markdown
## Jak często aktualizować treści na blogu?

W tym artykule omówimy kwestię częstotliwości publikacji...
```

## Citation Capsule Pattern

Samodzielny fragment 120-180 słów gotowy do zacytowania przez AI:

```markdown
### Wpływ świeżości treści na widoczność w AI

Badanie Digitaloft z 2025 roku wykazało, że 76% stron najczęściej cytowanych
przez ChatGPT aktualizuje treści w ciągu ostatnich 30 dni. Świeży content pojawia
się w 3x więcej odpowiedziach AI niż treści starsze niż 90 dni. Na polskim rynku,
gdzie Google AI Overviews jest dostępne od Q4 2025, regularna aktualizacja staje
się kluczowa nie tylko dla tradycyjnego SEO, ale również dla widoczności w AI search.
Rekomendacja: aktualizuj kluczowe artykuły co 60-90 dni, dodając nowe dane i źródła.
```

## Burstiness — zmienność zdań

**Cel:** std dev długości zdań > 6 słów

| Długość | Zastosowanie |
|---------|-------------|
| 4-8 słów | Punchline, kluczowa myśl, tranzycja |
| 10-15 słów | Standard, wyjaśnienie |
| 18-25 słów | Rozwinięcie, kontekst, przykład |

Mieszaj celowo. Nigdy 5 zdań po 15 słów pod rząd.

## Zakazane słowa AI (127+ pozycji)

Lista słów i fraz, których AI NIE MOŻE używać w generowanych treściach. Przetestowana produkcyjnie (źródło: blueprinty Make.com, Antigravity Automation).

**Po wygenerowaniu artykułu ZAWSZE przeskanuj tekst pod kątem tych słów. Jeśli znajdziesz — zamień na naturalny odpowiednik.**

### Przymiotniki i rzeczowniki "hype"
Dynamiczny, Kompleksowy, Rewolucyjny, Przełomowy, Transformacyjny, Futurystyczny, Wyrafinowany, Bezproblemowy, Solidny, Elastyczny, Zwinny, Potężny, Synergistyczny, Holistyczny, Zintegrowany, Bezprecedensowy, Niezrównany, Najnowocześniejszy, Światowej klasy, Najlepszy w swojej klasie, Wiodący w branży, Następnego poziomu, Cutting-edge, Game-changer, Plug-and-play, All-in-one, Pod klucz, Od końca do końca

### Czasowniki "buzzword"
Ujarzmiać, Odblokowywać, Uwalniać, Upełnomocniać, Katalizować, Zrewolucjonizować, Przekształcić, Zakłócić, Wyobrazić sobie na nowo, Przedefiniować, Przebudowywać, Napędzać, Odświeżać, Dźwignia (jako czasownik), Energetyzować, Nawigować, Kultywować, Urzekać, Rezonować

### Frazy szablonowe (NIGDY nie używaj)
"W dzisiejszej erze cyfrowej...", "W dzisiejszych czasach...", "W dobie cyfryzacji...", "W dynamicznym świecie...", "W królestwie...", "Kluczowym aspektem jest...", "Warto zwrócić uwagę na fakt, że...", "Nie ulega wątpliwości, że...", "Ważne jest aby zauważyć że...", "Podsumowując...", "W podsumowaniu...", "Należy zauważyć, że...", "Warto podkreślić...", "Rozpocznij podróż...", "Zanurz się...", "Zagłębiaj się w...", "Zapiąć pasy...", "Ciągle zmieniający się...", "Ciągle ewoluujący...", "Rozkwitający..."

### Frazy korporacyjne (unikaj)
"Innowacyjne rozwiązania", "Bezproblemowa integracja", "Interfejs przyjazny dla użytkownika", "Solidne rozwiązanie", "Skalowalna platforma", "Dynamiczny ekosystem", "Potężne funkcje", "Kompleksowe podejście", "Rozwiązanie wszystko w jednym", "Proces od końca do końca", "System pod klucz", "Myślenie niestandardowe", "Holistyczna strategia", "Zintegrowany framework", "Wykorzystaj synergie", "Odblokuj wartość", "Upełnomocnij użytkowników", "Umożliwiaj wzrost", "Katalizuj innowacje", "Zrewolucjonizuj branżę", "Przekształć krajobraz", "Zakłóć rynek", "Przedefiniuj standardy", "Zmiana paradygmatu", "Myślenie przyszłościowe", "Zrównoważone rozwiązania"

### Frazy nadmiernie superlative
"Bezprecedensowe możliwości", "Niezrównana wydajność", "Niezrównana jakość", "Niezrównana wiedza", "Usługa światowej klasy", "Produkty najlepsze w swojej klasie", "Innowacja wiodąca w branży", "Doświadczenie na następnym poziomie", "Wpływ zmieniający zasady gry"

## Reguły stylistyczne anty-AI

### Struktury do unikania
- Nie używaj pytań retorycznych jako przejść między tematami
- Nie stosuj szablonowych fraz wprowadzających i podsumowujących
- Unikaj nadmiernych powtórzeń składniowych i leksykalnych
- Unikaj struktur negujących oczekiwania ("X to nie tylko Y", "X to więcej niż Y")
- Nie używaj pustych fraz ("należy zauważyć, że", "warto podkreślić", "nie da się ukryć, że")
- Nie używaj fraz podsumowujących ("podsumowując", "reasumując", "konkludując")
- Nie powtarzaj tych samych struktur zdaniowych w kolejnych akapitach
- **Nigdy** nie używaj em dash (—) — zastąp przecinkiem, dwukropkiem lub rozbij na 2 zdania

### Naturalne niedoskonałości PL (DODAWAJ celowo)
- **Słowa wypełniające** (oszczędnie, max 2-3 na artykuł): "właściwie", "jakby", "znaczy", "po prostu"
- **Partykuły wzmacniające:** "przecież", "właściwie", "chyba", "raczej"
- **Idiomy PL:** "nie ma róży bez kolców", "wyjść na swoje", "trafiło się jak ślepej kurze ziarno"
- **Zdrobnienia** (umiarkowanie, w casualowych tekstach)
- **Spójniki literackie:** "niemniej jednak", "zatem", "wobec tego" — zamiast prostych "ale", "więc"
- **Elementy konwersacyjne:** okazjonalny humor, subtelna ironia, odniesienia kulturowe PL

## Styl i ton

### Obowiązkowe
- Strona czynna w całej treści
- Flesch Reading Ease PL: target **70-80** (łatwy do czytania, ale nie infantylny)
- Pierwsza osoba ("ja", "my") — wplataj osobiste doświadczenia
- Druga osoba ("ty", "twój") — zwracaj się bezpośrednio do czytelnika
- Poprawny polski z bogatym, ale nienachalnym słownictwem

### Różnorodność składniowa
- Mieszaj krótkie i długie zdania (burstiness — std dev > 6 słów)
- Różnicuj struktury zdaniowe (nie powtarzaj tego samego schematu)
- Używaj zdań złożonych, ale dbaj o klarowność
- Stosuj umiarkowanie elementy języka potocznego

## Antyprzykłady głosu — DOBRZE vs ŹLE

Pokaż agentowi konkretne pary, nie ogólne zasady. Format: ŹLE → DOBRZE.

| ŹLE (korporacja / AI-slop) | DOBRZE (naturalny głos) |
|----|-----|
| "Wykorzystaj AI do optymalizacji swojego pipeline'u sprzedażowego" | "Wrzuć transkrypt rozmowy handlowej do Claude i dostaniesz gotowe follow-up w 30 sekund" |
| "Nasze innowacyjne rozwiązanie umożliwia..." | "To narzędzie robi jedną rzecz: zamienia 3 godziny ręcznej pracy w 10 minut" |
| "W dzisiejszej dynamicznie zmieniającej się rzeczywistości biznesowej..." | "Twoja konkurencja już to automatyzuje. Ty jeszcze nie." |
| "Kompleksowe podejście do zarządzania relacjami z klientami" | "CRM, który nie wymaga 2 tygodni szkolenia" |
| "Zrewolucjonizuj swoje podejście do content marketingu" | "Zamiast pisać 5 postów dziennie, napisz jeden — i niech AI zrobi resztę" |
| "Odkryj niezrównane możliwości naszej platformy" | "Jedyne narzędzie, które naprawdę działa z polskimi fakturami" |

### Zasada: pokaż akcję, nie obiecuj wynik
- ŹLE: "Zwiększ swoją produktywność o 300%"
- DOBRZE: "Kliknij 'Generuj', czekaj 15 sekund, masz gotowy raport"

### Zasada: konkret bije przymiotnik
- ŹLE: "Potężne narzędzie do automatyzacji"
- DOBRZE: "Obsługuje 47 integracji, w tym InFakt, Baselinker i Subiekt GT"

## Specyfika języka polskiego

- Stosuj poprawną fleksję i składnię
- Unikaj nadużywania zapożyczeń gdy istnieją polskie odpowiedniki
- Stosuj terminologię specjalistyczną z umiarem
- Uwzględniaj fleksyjny charakter języka (odmiana przez przypadki)
- Dostosuj formy grzecznościowe do kontekstu (ty/Pan/Pani)
- Wykorzystuj bogactwo synonimów
- Stosuj polskie powiedzenia i przysłowia w odpowiednim kontekście

## Quality Gate J — automatyczna walidacja

Po wygenerowaniu artykułu uruchom ten check:

```
1. ZAKAZANE SŁOWA: przeskanuj tekst → count musi = 0
   → Jeśli >0: zamień na naturalne odpowiedniki i kontynuuj
2. FLESCH PL: oblicz czytelność → target 70-80
   → Formuła: 206.835 - 1.015 × (words/sentences) - 84.6 × (syllables/words)
   → Jeśli <60: uprość zdania, podziel na krótsze
   → Jeśli >85: za infantylny, dodaj złożoność
3. STRUKTURA: sprawdź czy brak szablonowych fraz/przejść
   → Jeśli znalezione: przepisz fragmenty
4. Jeśli jakikolwiek check FAIL → ponów generację z feedbackiem (max 3 iteracje)
5. Po 3 fail → flaguj do manualnego review
```

**Flesch PL target:** 70-80 (łatwy do czytania, ale nie infantylny)
