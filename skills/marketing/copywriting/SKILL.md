---
name: copywriting
description: >
  Copy marketingowy SaaS: homepage, landing page, pricing, feature pages, email, social.
  Formuły: PAS, AIDA, BAB, 4U, StoryBrand. Triggery: "napisz copy", "copywriting",
  "tekst na landing page", "nagłówek", "headline", "CTA", "opis produktu",
  "tekst marketingowy", "value proposition", "USP", "przepisz stronę".
---

# Copywriting — SaaS Marketing Copy

Generuje copy marketingowy dla stron SaaS — od nagłówków po pełne landing page. Opiera się na sprawdzonych formułach copywriterskich zaadaptowanych do polskiego rynku.

## Kiedy używać

- Pisanie/przepisanie tekstu na homepage, landing page, pricing, features
- Tworzenie nagłówków, CTA, opisów produktu
- Email marketing copy (welcome, onboarding, win-back)
- Social media copy (LinkedIn, Twitter/X)
- Użytkownik mówi: "napisz copy", "przepisz stronę", "lepszy nagłówek"

## Zależności

- **Wymagane:** `product-marketing-context` → pliki `brand-voice.md`, `features.md`, `cro-best-practices.md`
- **Opcjonalne:** `voice-profile` → ton komunikacji właściciela, `seo` → keyword integration

Jeśli brak kontekstu → zapytaj o: produkt, grupę docelową, główny ból, ton komunikacji.

## Formuły copywriterskie

### 1. PAS (Problem → Agitate → Solve)
**Kiedy:** Landing page, email, blog intro
```
[Problem] Tracisz godziny na ręczne wysyłanie ofert?
[Agitate] Każda minuta to stracony lead. Konkurencja automatyzuje, Ty kopiujesz-wklejasz.
[Solve] [Produkt] automatyzuje outreach w 2 minuty. Zero copy-paste, 3x więcej odpowiedzi.
```

### 2. AIDA (Attention → Interest → Desire → Action)
**Kiedy:** Homepage hero, reklamy
```
[Attention] 73% firm traci leady przez wolny follow-up.
[Interest] [Produkt] odpowiada w <5 min — automatycznie.
[Desire] Firmy jak [Klient] zwiększyły konwersję o 40%.
[Action] Zacznij za darmo →
```

### 3. BAB (Before → After → Bridge)
**Kiedy:** Case study, testimonial framing, email
```
[Before] Przed [Produktem]: 4h dziennie na manualne raporty.
[After] Teraz: raporty generują się same, zespół skupia się na strategii.
[Bridge] [Produkt] automatyzuje raportowanie w 10 minut setup.
```

### 4. 4U (Useful → Urgent → Unique → Ultra-specific)
**Kiedy:** Nagłówki, subject lines email
```
[Useful] Zaoszczędź 10h/tydzień
[Urgent] na raportowaniu (zanim konkurencja Cię wyprzedzi)
[Unique] jedynym narzędziem które łączy dane z 5 źródeł
[Ultra-specific] w 2 kliknięcia, bez kodowania
```

### 5. StoryBrand (Donald Miller)
**Kiedy:** Pełna strona główna
```
Bohater: [Klient] — ma problem
Problem: [Ból zewnętrzny] / [Ból wewnętrzny] / [Ból filozoficzny]
Przewodnik: [Twój produkt] — rozumie + ma plan
Plan: 3 kroki (1. Zarejestruj się 2. Skonfiguruj 3. Osiągnij wynik)
CTA: [Akcja] / [Transitional CTA]
Sukces: [Życie po użyciu produktu]
Porażka: [Co się stanie jeśli nie podejmie akcji]
```

## Typy stron — szablony

### Homepage Hero
```markdown
## [Nagłówek — wartość dla klienta, max 10 słów PL]
[Podnagłówek — jak to działa, 1-2 zdania]

[Primary CTA: czasownik + rezultat] [Secondary CTA: niskie zobowiązanie]
```

Reguły:
- Nagłówek: 2. osoba ("Ty"), czasownik akcji, mierzalny rezultat
- Podnagłówek: uzupełnia nagłówek (nie powtarza), max 2 zdania
- Primary CTA: "Zacznij za darmo", "Wypróbuj bez karty", "Zobacz demo"
- Secondary CTA: "Jak to działa?", "Zobacz cennik"

### Feature Page
```markdown
## [Nazwa funkcji — benefit, nie feature name]
[1 zdanie: co i dlaczego to ważne]

### Jak to działa
1. [Krok 1 — prosty]
2. [Krok 2]
3. [Krok 3 — rezultat]

### Dlaczego to ważne
[2-3 bullet points: konkretne korzyści z liczbami]

[CTA do trial/demo]
```

### Pricing Page
```markdown
## Proste ceny, bez ukrytych kosztów

| | Starter | Pro | Enterprise |
|---|---------|-----|------------|
| Cena | [X] zł/mies. | [Y] zł/mies. | Indywidualnie |
| [Feature 1] | ✓ | ✓ | ✓ |
| [Feature 2] | — | ✓ | ✓ |
| CTA | Zacznij za darmo | Najpopularniejszy | Porozmawiajmy |

### Często zadawane pytania
[5-7 pytań: billing, anulowanie, migracja, bezpieczeństwo, wsparcie]
```

### Email — Welcome Sequence
```
Email 1 (natychmiast): Witaj + 1 quick win (co zrobić w 2 minuty)
Email 2 (dzień 2): Główna wartość + case study
Email 3 (dzień 4): Feature spotlight + social proof
Email 4 (dzień 7): Czy potrzebujesz pomocy? + link do demo/support
Email 5 (dzień 14): Upgrade prompt + co tracisz na darmowym planie
```

## Checklist jakości copy

Przed oddaniem sprawdź:

- [ ] **Nagłówek:** Czy odpowiada "co mi to daje" w ≤10 słów?
- [ ] **Grupa docelowa:** Czy jest nazwana lub oczywista?
- [ ] **Ból:** Czy jest konkretny (nie generic "oszczędź czas")?
- [ ] **Dowody:** Czy są liczby, case study, social proof?
- [ ] **CTA:** Czy jest 1 primary CTA, widoczne, low-commitment?
- [ ] **Ton:** Czy pasuje do `brand-voice.md`?
- [ ] **Polskie znaki:** Czy wszystkie diakrytyki są poprawne?
- [ ] **Długość:** Czy copy jest zwięzłe (każde słowo pracuje)?
- [ ] **Keyword:** Czy primary keyword jest w nagłówku/H1? (jeśli SEO ważne)

## Anty-wzorce (NIE pisz)

- "Innowacyjne rozwiązanie" — pusty buzzword
- "Kompleksowa platforma" — nic nie mówi
- "Narzędzie nowej generacji" — marketing speak
- "Dowiedz się więcej" jako jedyne CTA — zero intencji
- "Zapraszamy do kontaktu" — pasywne, bez urgency
- Copy o firmie ("Jesteśmy liderem...") zamiast o kliencie ("Ty osiągniesz...")
- Nagłówek >15 słów polskich — zbyt długi, traci siłę
- CTA bez kontekstu ("Wyślij", "Dalej") — co się stanie po kliknięciu?

## Cross-references

- `product-marketing-context` → brand voice, features, CRO best practices
- `seo` → keyword integration w copy (title, H1, meta desc)
- `content` → artykuły blogowe (inny ton niż LP copy)
- `voice-profile` → ton właściciela do testimoniali i personal brand
- `marketing-psychology` → techniki perswazji do wzmocnienia copy

## Pułapki

- **Nie pisz copy bez kontekstu** — kto jest klientem? Jaki ból? Bez tego wyjdzie generic
- **Features ≠ benefits** — "API REST" to feature, "Integracja w 5 minut" to benefit
- **Polski ≠ tłumaczenie z EN** — "Get started free" → NIE "Zacznij za darmo" (to akurat OK), ale "Leverage your data" → NIE "Wykorzystaj swoje dane" (brzmi sztucznie)
- **Testuj nagłówki** — zawsze zaproponuj 3 warianty, niech użytkownik wybierze
