---
name: email-sequence
description: >
  Sekwencje emailowe SaaS: onboarding, nurture, win-back, drip campaigns, welcome series.
  Triggery: "sekwencja emailowa", "email sequence", "drip campaign", "onboarding emails",
  "welcome series", "nurture sequence", "win-back", "email automation",
  "autoresponder", "email marketing", "follow-up emails", "churn prevention email".
---

# Email Sequence — Sekwencje emailowe SaaS

Projektuje i pisze sekwencje emailowe: onboarding, nurture, win-back, drip campaigns. Od welcome email po reactivation — pełny lifecycle klienta.

## Kiedy używać

- Setup welcome/onboarding email sequence
- Tworzenie nurture sequence dla leadów
- Win-back emails dla churned users
- Drip campaign edukacyjna
- Użytkownik mówi: "sekwencja emailowa", "onboarding emails", "win-back"

## Zależności

- **Wymagane:** `product-marketing-context` → `brand-voice.md`, `features.md`
- **Opcjonalne:** `copywriting` → formuły PAS, AIDA do emaili
- **Opcjonalne:** `voice-profile` → ton komunikacji
- **Opcjonalne:** `analytics-tracking` → tracking otwarć i kliknięć
- **Opcjonalne:** `cold-email` → outbound sequences (oddzielny skill)

## Typy sekwencji

| Sekwencja | Trigger | Cel | Ilość emaili |
|-----------|---------|-----|-------------|
| **Welcome** | Signup | Aktywacja | 5-7 |
| **Onboarding** | First login | Time to value | 4-6 |
| **Nurture** | Lead magnet download | Edukacja → trial | 5-8 |
| **Trial expiring** | Trial D-3, D-1, D0 | Konwersja | 3-4 |
| **Win-back** | Churn / inactive 30d | Reaktywacja | 3-5 |
| **Upgrade** | Active free user | Upsell | 3-4 |
| **Educational drip** | Newsletter signup | Autorytet | 6-12 |

## 1. Welcome Sequence (po rejestracji)

```
Email 1: Dzień 0 (natychmiast)
─────────────────────────────
Subject: Witaj w [Produkt] — oto Twój pierwszy krok
From: [Imię] z [Produkt]

Cel: Potwierdź signup + 1 akcja do wykonania

Body:
- Cześć [Imię]!
- Cieszę się, że jesteś z nami.
- [1 ZDANIE: co produkt robi]
- Twój pierwszy krok: [LINK do konkretnej akcji]
- PS: Odpowiedz na tego maila jeśli masz pytania — czytam każdą wiadomość.

CTA: [Zacznij teraz →]


Email 2: Dzień 1
─────────────────────────────
Subject: Jak [konkretny wynik] w 5 minut
Cel: Pokaż pierwszą wartość (time to value)

Body:
- Wczoraj założyłeś konto — świetnie!
- Dziś pokażę Ci jak [osiągnąć konkretny wynik]
- [3 kroki ze screenshotami / GIFami]
- Rezultat: [co dostaniesz po wykonaniu kroków]

CTA: [Zrób to teraz →]


Email 3: Dzień 3
─────────────────────────────
Subject: [Imię], próbowałeś już [feature]?
Cel: Wprowadzenie kluczowego feature'a

Body:
- Większość naszych klientów zaczyna od [feature X]
- Oto dlaczego: [1-2 zdania o wartości]
- [Krótki tutorial / link do video]
- Klienci, którzy używają [feature], osiągają [konkretny wynik]

CTA: [Wypróbuj [feature] →]


Email 4: Dzień 5
─────────────────────────────
Subject: Jak [firma klienta] osiągnęła [wynik] z [Produkt]
Cel: Social proof + inspiracja

Body:
- Case study / testimonial
- [Firma] miała problem: [opis]
- Użyli [Produkt] do: [rozwiązanie]
- Wynik: [konkretna liczba]
- "Cytat klienta" — [Imię], [Stanowisko]

CTA: [Zobacz jak Ty możesz to zrobić →]


Email 5: Dzień 7
─────────────────────────────
Subject: Potrzebujesz pomocy z [Produkt]?
Cel: Wsparcie + redukcja churn risk

Body:
- Minął tydzień od rejestracji
- IF aktywny: "Widzę, że [osiągnąłeś X] — super!"
- IF nieaktywny: "Zauważyłem, że jeszcze nie [akcja]. Mogę pomóc?"
- Oto 3 zasoby które mogą się przydać:
  1. [Link do docs]
  2. [Link do video]
  3. [Link do community/support]

CTA: [Umów się na demo →] lub [Odpowiedz — pomogę osobiście]
```

## 2. Trial Expiring Sequence

```
Email 1: 3 dni przed końcem triala
─────────────────────────────
Subject: Zostały Ci 3 dni triala [Produkt]
Cel: Reminder + wartość

Body:
- Trial kończy się [data]
- Do tej pory [co osiągnąłeś / ile zaoszczędziłeś]
- Żeby nie stracić danych → wybierz plan
- [Tabela 2-3 planów z cenami]

CTA: [Wybierz plan →]


Email 2: 1 dzień przed końcem
─────────────────────────────
Subject: Jutro stracisz dostęp do [Produkt]
Cel: Urgency

Body:
- Twój trial kończy się jutro o [godzina]
- Co stracisz: [lista — dane, automatyzacje, raporty]
- Co zyskasz zostając: [benefit 1, 2, 3]
- Specjalna oferta: [opcjonalnie — zniżka 20% na pierwszy miesiąc]

CTA: [Zostań z nami →]


Email 3: Dzień wygaśnięcia
─────────────────────────────
Subject: Twój trial [Produkt] wygasł
Cel: Last chance

Body:
- Trial się skończył, ale dane są bezpieczne przez [X] dni
- Możesz wrócić i aktywować konto w dowolnym momencie
- [Link do reaktywacji]
- Pytanie: Co sprawiło, że nie wybrałeś planu? (odpowiedz — chętnie pomogę)

CTA: [Reaktywuj konto →]
```

## 3. Win-back Sequence (nieaktywni 30+ dni)

```
Email 1: Dzień 30 nieaktywności
─────────────────────────────
Subject: Tęsknimy za Tobą, [Imię]
Cel: Re-engagement

Body:
- Dawno Cię nie widzieliśmy w [Produkt]
- Od Twojej ostatniej wizyty dodaliśmy:
  1. [Nowy feature 1]
  2. [Nowy feature 2]
  3. [Ulepszenie]
- Wróć i sprawdź →

CTA: [Zaloguj się →]


Email 2: Dzień 37
─────────────────────────────
Subject: Czy [Produkt] nie spełnił Twoich oczekiwań?
Cel: Feedback + rescue

Body:
- Chcę zrozumieć dlaczego odszedłeś
- Krótka ankieta (1 min, 3 pytania):
  □ Za drogi
  □ Brakujące funkcje
  □ Za trudny w obsłudze
  □ Znalazłem lepsze narzędzie
  □ Nie potrzebuję już
- Twój feedback pomoże nam się poprawić

CTA: [Wypełnij ankietę (1 min) →]


Email 3: Dzień 45
─────────────────────────────
Subject: Ostatnia wiadomość od [Produkt]
Cel: Final attempt + clean list

Body:
- To mój ostatni email w tej sprawie
- Jeśli chcesz wrócić — Twoje konto czeka
- Jeśli nie — rozumiem i życzę powodzenia
- [Opcjonalnie: zniżka 30% na 3 miesiące]
- PS: Jeśli nie chcesz więcej wiadomości — kliknij unsubscribe poniżej

CTA: [Wróć z 30% zniżką →]
```

## 4. Nurture Sequence (lead → trial)

```
Email 1: Natychmiast po pobraniu lead magneta
─────────────────────────────
Subject: Oto Twój [nazwa zasobu]
+ [Link do zasobu]
+ Krótkie intro: kto jesteś, co robisz


Email 2: Dzień 2 — Edukacja
Subject: [Problem, który rozwiązujesz] — kompletny przewodnik
+ Wartościowy content (nie sprzedaż)


Email 3: Dzień 4 — Case study
Subject: Jak [firma] rozwiązała [problem]
+ Social proof, konkretne wyniki


Email 4: Dzień 7 — Intro produktu
Subject: Narzędzie, które rozwiązuje [problem] automatycznie
+ Soft intro: "a propos — zbudowaliśmy narzędzie..."


Email 5: Dzień 10 — Trial CTA
Subject: Wypróbuj [Produkt] — 14 dni za darmo
+ Bezpośredni CTA do triala
+ Reminder: bez karty, setup 2 min
```

## Zasady pisania emaili SaaS

### Subject line:
- Max 50 znaków (mobile cutoff)
- Personalizacja: [Imię] zwiększa open rate o 20%
- Pytanie lub konkret > clickbait
- Testuj emoji — czasem +5% OR, czasem -5%

### Body:
- 1 email = 1 cel = 1 CTA
- Max 200 słów (ludzie skanują, nie czytają)
- Short paragraphs (2-3 zdania max)
- Pisze człowiek, nie firma (imię nadawcy, nie "Zespół X")
- PS: zawsze czytany — umieść tu backup CTA

### Timing:
| Sekwencja | Interwał | Best days |
|-----------|----------|-----------|
| Welcome | D0, D1, D3, D5, D7 | Dowolne |
| Nurture | D0, D2, D4, D7, D10 | Wt-Czw |
| Win-back | D30, D37, D45 | Wt-Czw |
| Trial expiring | D-3, D-1, D0 | Dowolne |

### Metryki:

| Metryka | Dobry | Świetny | Alarm |
|---------|-------|---------|-------|
| Open rate | 25% | 40%+ | < 15% |
| Click rate | 3% | 5%+ | < 1% |
| Unsubscribe | < 0.5% | < 0.2% | > 1% |
| Reply rate | 1% | 3%+ | — |

## Narzędzia

| Narzędzie | Typ | Cena |
|-----------|-----|------|
| Resend | Transactional + marketing | Free tier |
| Loops | SaaS-focused email | Free do 1000 |
| ConvertKit | Creator-focused | Free do 1000 |
| Mailerlite | Ogólny marketing | Free do 1000 |
| Postmark | Transactional | $15/mies |

## Pułapki

1. **Za dużo emaili za szybko** → max 1 email dziennie, idealnie co 2-3 dni
2. **Brak personalizacji** → "Cześć!" zamiast "Cześć [Imię]!" = -20% engagement
3. **Sprzedaż od emaila 1** → najpierw wartość, potem CTA (zasada 80/20)
4. **Brak unsubscribe** → obowiązkowy prawnie (GDPR) + buduje zaufanie
5. **Ignorowanie reply** → jeśli ktoś odpowie na maila → odpowiedz! To gorący lead
6. **HTML newsletter na onboarding** → plain text > HTML na sekwencjach 1:1
