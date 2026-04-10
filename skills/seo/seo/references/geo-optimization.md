# GEO/AEO — Optymalizacja pod AI Search

> **Spis treści:** AI Crawlers (7 crawlerów + robots.txt) | llms.txt standard | Citability Score (134-167 słów) | Structural readability | Brand Mentions (korelacje) | Scoring GEO | Quick Wins

Generative Engine Optimization (GEO) / Answer Engine Optimization (AEO) — optymalizacja treści pod Google AI Overviews, ChatGPT search, Perplexity, i inne systemy AI.

## AI Crawlers — zarządzanie dostępem

### Główni crawlerzy AI

| Crawler | Właściciel | Cel | robots.txt control |
|---------|-----------|-----|-------------------|
| **Googlebot** | Google | Search indexing | Blokada = brak w Google Search |
| **Google-Extended** | Google | Trening Gemini (NIE search) | Bezpieczne do blokady |
| **GPTBot** | OpenAI | ChatGPT, training | Bezpieczne do blokady |
| **ClaudeBot** | Anthropic | Claude training | Bezpieczne do blokady |
| **PerplexityBot** | Perplexity | Search + answers | Blokada = brak w Perplexity |
| **Bytespider** | ByteDance | TikTok AI training | Bezpieczne do blokady |
| **CCBot** | Common Crawl | Open dataset | Bezpieczne do blokady |

### Rekomendacja robots.txt

```
# Pozwól na indeksowanie Google Search
User-agent: Googlebot
Allow: /

# Pozwól AI search engines (ważne dla widoczności)
User-agent: PerplexityBot
Allow: /

# Blokuj trening AI (opcjonalne)
User-agent: GPTBot
Disallow: /

User-agent: ClaudeBot
Disallow: /

User-agent: Google-Extended
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: CCBot
Disallow: /
```

**KLUCZOWE:** `Google-Extended` blokuje TYLKO trening Gemini. Blokada `Googlebot` wyłącza stronę z Google Search — NIGDY tego nie rób (chyba że celowo).

## llms.txt — standard dla AI crawlerów

### Co to jest
Plik `/llms.txt` w root domeny. Format Markdown. Daje AI crawlerom ustrukturyzowany przegląd strony.

### Sprawdź obecność
```
GET https://[domena]/llms.txt
```

### Rekomendowana struktura
```markdown
# [Nazwa firmy/strony]

> [Krótki opis — 1-2 zdania]

## Kluczowe informacje
- [Fakt 1 o firmie/produkcie]
- [Fakt 2]
- [Fakt 3]

## Główne strony
- [Strona 1](url): [opis]
- [Strona 2](url): [opis]

## Kontakt
- Email: [email]
- Telefon: [telefon]
```

### Scoring llms.txt
| Kryteria | Punkty |
|----------|--------|
| Plik istnieje | +30 |
| Ma opis firmy | +20 |
| Lista kluczowych stron | +20 |
| Dane kontaktowe | +15 |
| Aktualne informacje | +15 |

## Citability Score — gotowość do cytowania przez AI

### Optymalny fragment: 134-167 słów

Systemy AI najchętniej cytują fragmenty o długości 134-167 słów. Strukturyzuj treść tak, aby kluczowe informacje mieściły się w paragrafach tej długości.

### Czynniki citability

| Czynnik | Wpływ | Jak optymalizować |
|---------|-------|-------------------|
| **Structural readability** | Wysoki | Nagłówki H2/H3, listy, tabele |
| **Concise answers** | Wysoki | Paragraf 134-167 słów z jasną odpowiedzią |
| **Named entities** | Średni | Nazwiska, marki, daty, liczby |
| **Source attribution** | Średni | Cytuj źródła, linkuj do badań |
| **Freshness** | Średni | Data publikacji/aktualizacji |

### Structural readability checklist

- [ ] Każda sekcja ma nagłówek H2 lub H3
- [ ] Kluczowe informacje w listach lub tabelach
- [ ] Paragraf odpowiedzi w pierwszych 2 zdaniach sekcji
- [ ] Brak wall-of-text (max 4-5 zdań w paragrafie)
- [ ] Named entities (daty, liczby, nazwy) zamiast ogólników

## Brand Mentions — korelacja z AI citations

### Siła korelacji platformy → AI citation

| Platforma | Korelacja | Priorytet |
|-----------|-----------|-----------|
| **YouTube** | 0.737 (silna) | WYSOKI — twórz wideo z nazwą marki |
| **Reddit** | Wysoka | WYSOKI — naturalne wzmianki w dyskusjach |
| **Wikipedia** | Wysoka | ŚREDNI — trudne do uzyskania, ale potężne |
| **LinkedIn** | Średnia | ŚREDNI — profile firmowe i artykuły |
| **Domain Rating / Backlinki** | 0.266 (słaba) | NISKI — mniej istotne niż mentions |

**Kluczowy insight:** Tylko 11% domen jest cytowanych zarówno przez ChatGPT JAK I Google AI Overviews dla tego samego zapytania. Optymalizuj pod obie platformy.

### Strategia brand mentions

1. **YouTube** — publikuj wideo z nazwą marki w tytule i opisie
2. **Reddit** — udzielaj wartościowych odpowiedzi (nie spam!), naturalne wzmianki
3. **LinkedIn** — artykuły eksperckie z tagami firmowymi
4. **Quora** — odpowiedzi z referencjami do marki
5. **Branżowe fora/portale** — np. dla polskiego rynku: Wykop, Dobreprogramy, Spider's Web

## Scoring GEO w audycie

| Komponent | Waga | Max punktów |
|-----------|------|-------------|
| AI Crawler Access | 25% | 25 |
| llms.txt | 20% | 20 |
| Citability | 25% | 25 |
| Structural readability | 15% | 15 |
| Brand mentions | 15% | 15 |

**Ocena ogólna GEO:**
| Wynik | Etykieta |
|-------|----------|
| 80-100 | AI-ready |
| 60-79 | Częściowo gotowy |
| 40-59 | Wymaga pracy |
| 0-39 | Nieprzygotowany |

## Quick Wins GEO

1. Dodaj `/llms.txt` (5 minut, +30 pkt)
2. Dodaj daty publikacji/aktualizacji do artykułów (+freshness)
3. Przeformatuj key paragraphs na 134-167 słów
4. Dodaj tabele i listy zamiast wall-of-text
5. Sprawdź czy robots.txt nie blokuje AI crawlerów (GPTBot, PerplexityBot)
