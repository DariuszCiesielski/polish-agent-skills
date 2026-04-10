---
name: content-repurpose
description: >
  Repurposing contentu: 1 materiał źródłowy → wiele formatów (newsletter, social, short-form, threads).
  Triggery: "repurpose content", "przeróbka treści", "1 do wielu", "content repurposing",
  "z artykułu na posty", "z video na tekst", "z podcastu na newsletter",
  "recykling treści", "dystrybucja contentu", "multi-format".
---

# Content Repurpose — 1 materiał → wiele formatów

Przekształca jeden materiał źródłowy (artykuł, video, podcast, webinar) w wiele formatów dystrybucji. Maksymalizuje zasięg przy minimalnym dodatkowym nakładzie pracy.

## Kiedy używać

- Masz artykuł/video/podcast i chcesz więcej zasięgu
- Planujesz pipeline dystrybucji contentu
- Szukasz sposobów na regularną obecność na wielu kanałach
- Użytkownik mówi: "przeróbka treści", "z artykułu na posty", "repurpose"

## Zależności

- **Opcjonalne:** `social-content` → formaty i struktury per platforma
- **Opcjonalne:** `copywriting` → formuły copywriterskie
- **Opcjonalne:** `content-strategy` → topic clusters i calendar
- **Opcjonalne:** `voice-profile` → spójny ton komunikacji
- **Opcjonalne:** `image-generator` → wizualia do postów

## Master Framework: Content Waterfall

```
           ┌─────────────────┐
           │  ŹRÓDŁO (Pillar) │
           │  Blog / Video /  │
           │  Podcast / Webinar│
           └────────┬─────────┘
                    │
        ┌───────────┼───────────┐
        ▼           ▼           ▼
   Newsletter    Thread      Karuzela
   (email)      (X/LinkedIn)  (IG/LinkedIn)
        │           │           │
        ▼           ▼           ▼
   Short posts   Cytaty      Reels/Shorts
   (LinkedIn)   (grafiki)    (video 60s)
        │           │           │
        ▼           ▼           ▼
   Comments     Infografika  Stories
   (engagement) (Pinterest)  (ephemeral)
```

## Macierz transformacji

### Ze źródła: ARTYKUŁ BLOGOWY

| Format docelowy | Co wyciągnąć | Nakład pracy |
|----------------|-------------|-------------|
| Newsletter | Streszczenie + 1 insight + CTA | 15 min |
| LinkedIn post | Kontrowersyjny wniosek + historia | 10 min |
| Thread X (5-8 tweetów) | Key takeaways, numerowane | 15 min |
| Karuzela IG/LinkedIn | 7-10 slajdów z głównymi punktami | 30 min |
| Short-form video (60s) | Najciekawszy fragment, talking head | 20 min |
| Infografika | Dane/statystyki z artykułu | 30 min |
| Cytaty (3-5 grafik) | Najlepsze zdania na tle grafiki | 15 min |
| FAQ post | Pytania, które artykuł odpowiada | 10 min |

### Ze źródła: VIDEO / PODCAST

| Format docelowy | Co wyciągnąć | Nakład pracy |
|----------------|-------------|-------------|
| Artykuł blogowy | Transkrypcja → edycja → artykuł | 45 min |
| Newsletter | 3 kluczowe wnioski + link | 15 min |
| Short clips (3-5 × 60s) | Najlepsze fragmenty | 30 min |
| Cytaty audiogramy | Fragment audio + tekst na grafice | 20 min |
| Thread | Timeline rozmowy z key takeaways | 15 min |
| LinkedIn post | "Rozmawiałem z [osoba] o [temat]..." | 10 min |
| Show notes | Timestamps + streszczenie | 20 min |

### Ze źródła: WEBINAR / PREZENTACJA

| Format docelowy | Co wyciągnąć | Nakład pracy |
|----------------|-------------|-------------|
| Artykuł "recap" | Slajdy → tekst + screenshoty | 30 min |
| Seria postów (5-7) | 1 slajd = 1 post | 30 min |
| Checklist / template | Actionable steps z prezentacji | 15 min |
| Email do uczestników | Follow-up z materiałami | 10 min |
| Karuzela | Najlepsze slajdy zaadaptowane | 20 min |

## Instrukcje transformacji

### Artykuł → LinkedIn Post

```markdown
WEJŚCIE: Artykuł [2000 słów]

PROCES:
1. Znajdź JEDNĄ kontrowersyjną/zaskakującą tezę z artykułu
2. Napisz hook (1 zdanie, zatrzymuje scrollowanie)
3. Dodaj kontekst/historię (3-5 zdań)
4. Podaj 3-5 key takeaways (krótkie bullet points)
5. CTA: pytanie do dyskusji lub link do artykułu

WYJŚCIE: Post 200-300 słów

ZASADY:
- NIE streszczaj artykułu — wyciągnij JEDNĄ myśl
- Hook ≠ tytuł artykułu (przeformułuj na kontrowersyjne)
- Dodaj osobiste doświadczenie (nie "artykuł mówi że", ale "zauważyłem że")
```

### Artykuł → Thread X

```markdown
WEJŚCIE: Artykuł [2000 słów]

PROCES:
1. Tweet 1: Hook + "Wątek 🧵" (najciekawszy wniosek)
2. Tweet 2: Kontekst problemu (dlaczego to ważne)
3. Tweet 3-7: Po jednym key takeaway (1 myśl = 1 tweet)
4. Tweet 8: Podsumowanie / punchline
5. Tweet 9: CTA (follow + link do artykułu)

WYJŚCIE: 7-9 tweetów

ZASADY:
- Każdy tweet musi działać samodzielnie
- Numeruj: "1/", "2/" itd.
- Max 250 znaków per tweet (zostaw miejsce na RT)
- Ostatni tweet: "Jeśli przydatne → retweet tweet 1"
```

### Artykuł → Karuzela

```markdown
WEJŚCIE: Artykuł [2000 słów]

PROCES:
1. Slajd 1: Hook (pytanie lub bold statement z artykułu)
2. Slajd 2: Problem (ból czytelnika)
3. Slajd 3-8: Rozwiązanie krok po kroku
4. Slajd 9: Key takeaway (1 zdanie)
5. Slajd 10: CTA (save, follow, link)

WYJŚCIE: 8-10 slajdów, 1080x1350px

ZASADY:
- Max 5-7 słów per slajd (nie ściana tekstu!)
- Duży font (min 28pt)
- 1 myśl = 1 slajd
- Spójne kolory z brand
```

### Video → Short Clips

```markdown
WEJŚCIE: Video [30-60 min]

PROCES:
1. Obejrzyj/odsłuchaj, zaznacz timestamps z "wow moments"
2. Wybierz 3-5 fragmentów po 30-90 sekund
3. Każdy clip: hook w pierwszych 3s (tekst na ekranie)
4. Dodaj napisy (auto lub ręcznie)
5. Format 9:16 (Reels/Shorts/TikTok)

KRYTERIA WYBORU CLIPU:
- Zaskakujący fakt lub statystyka
- Kontrowersyjna opinia
- Praktyczny tip (actionable)
- Emocjonalny moment
- Zwięzła anegdota
```

## Content Calendar — harmonogram repurposingu

```
PONIEDZIAŁEK: Publikacja artykułu źródłowego (blog)
WTOREK: Newsletter ze streszczeniem + insight
ŚRODA: Thread na X (key takeaways)
CZWARTEK: Post na LinkedIn (1 teza + historia)
PIĄTEK: Karuzela na IG/LinkedIn
WEEKEND: Cytaty graficzne (3 szt) — zaplanowane na tydzień

Tydzień +1: Short-form video clips (jeśli źródło = video)
Tydzień +2: FAQ post / komentarze / engagement
```

## Automatyzacja (Make.com / n8n)

```
Trigger: Nowy post na blogu (RSS / webhook)
↓
Action 1: Wyciągnij treść artykułu
Action 2: AI → wygeneruj warianty (newsletter, LinkedIn, thread)
Action 3: Zapisz drafty w Google Docs / Notion
Action 4: Powiadomienie Slack "Nowe drafty do review"
↓
[Manual review + publish]
```

## Metryki

| Metryka | Co mierzy | Target |
|---------|-----------|--------|
| Content multiplier | Ile formatów z 1 źródła | 5-8x |
| Time per derivative | Czas na 1 format pochodny | < 30 min |
| Cross-channel reach | Suma zasięgów | 3-5x vs samo źródło |
| Best performing format | Który format ma najlepszy engagement | Track weekly |

## Pułapki

1. **Copy-paste między platformami** → każda platforma ma inny format i algorytm
2. **Repurpose wszystkiego** → nie każdy artykuł nadaje się. Wybierz evergreen i high-performers
3. **Brak adaptacji tonu** → LinkedIn ≠ X ≠ Instagram. Dostosuj głos
4. **Za szybkie publikowanie** → nie wrzucaj 5 formatów w 1 dzień. Rozłóż na tydzień
5. **Ignorowanie wyników** → track który format działa najlepiej, rób więcej tego
