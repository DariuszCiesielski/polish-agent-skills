# Content Length Benchmarks — Reference

Optymalne długości treści wg typu strony i intencji. Bazowane na analizach top 10 wyników Google.

## Benchmark wg typu strony

| Typ strony | Min. słów | Optymalnie | Max (powyżej = padding) |
|------------|-----------|------------|------------------------|
| **Homepage SaaS** | 300 | 500-800 | 1200 |
| **Landing page** | 400 | 600-1000 | 1500 |
| **Feature page** | 500 | 800-1200 | 2000 |
| **Pricing page** | 200 | 400-600 | 800 |
| **Blog post (informational)** | 1000 | 1500-2500 | 4000 |
| **Blog post (how-to)** | 1200 | 2000-3000 | 5000 |
| **Blog post (comparison)** | 1500 | 2000-3500 | 5000 |
| **Blog post (listicle)** | 1000 | 1500-2500 | 3500 |
| **Case study** | 800 | 1200-1800 | 2500 |
| **Documentation** | 500 | 800-1500 | Bez limitu |
| **About page** | 300 | 500-800 | 1200 |
| **FAQ page** | 500 | 800-1500 | 2000 |

## Benchmark wg intencji wyszukiwania

| Intent | Optymalnie (słowa) | Komentarz |
|--------|-------------------|-----------|
| Informational ("co to jest X") | 1500-2500 | Głęboki, wyczerpujący |
| Navigational ("X login") | 200-500 | Krótki, linkujący |
| Commercial ("X vs Y") | 2000-3500 | Porównawczy, tabelaryczny |
| Transactional ("kup X") | 500-1000 | Skoncentrowany na CTA |

## Reguły

1. **Thin content** = strona z <300 słów unikalnej treści (nie licząc nav/footer/sidebar)
2. **Keyword stuffing** = keyword density >3% (naturalny zakres: 1-2%)
3. **Content padding** = sekcje, które nie dodają wartości (powtórzenia, filler text)
4. **Benchmark vs top 10** = sprawdź średnią długość top 10 wyników dla danego keyword. Celuj w +10-20% powyżej średniej, ale nie 3x więcej.

## Jak mierzyć

```
Word count = (text content strony) - (navigation + footer + sidebar + embedded code blocks)
```

Przy audycie: policz słowa w `<main>` lub `<article>` (nie w całym `<body>`).

## Polski vs angielski

Polskie teksty są zazwyczaj ~15-20% dłuższe niż angielskie equivalenty (więcej sylab, deklinacja, koniugacja). Przy porównaniu z angielskimi benchmarkami — dodaj 15%.
