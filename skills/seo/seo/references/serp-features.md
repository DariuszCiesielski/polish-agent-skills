# SERP Features — Reference

Typy wyników specjalnych w Google, które warto targetować lub unikać.

## Aktywne SERP features (2026)

| Feature | Jak targetować | Schema wymagany? |
|---------|---------------|-----------------|
| **Featured Snippet** | Paragraf 40-60 słów odpowiadający na pytanie, lista/tabela | Nie, ale structured content pomaga |
| **People Also Ask (PAA)** | Odpowiedz na pytania related keywords w H2/H3 | Nie |
| **Knowledge Panel** | Wikipedia, Wikidata, Google Business Profile | Organization schema |
| **Sitelinks** | Czysta nawigacja, dobre internal linking | WebSite + SearchAction |
| **Image Pack** | Alt text, kompresja, lazy loading, descriptive filenames | ImageObject |
| **Video Results** | YouTube embed, VideoObject schema, thumbnail | VideoObject (wymagany) |
| **Local Pack** | Google Business Profile, NAP consistency | LocalBusiness |
| **Reviews** | Agregowane recenzje na stronie | AggregateRating + Review |
| **Product** | Cena, dostępność, recenzje na stronie produktu | Product + Offer |
| **Breadcrumbs** | Hierarchia URL, BreadcrumbList schema | BreadcrumbList (wymagany) |
| **AI Overview** | Citability: 134-167 słów, structured readability | Nie, ale pomaga |

## Deprecated / ograniczone (NIE targetuj)

| Feature | Status | Od kiedy |
|---------|--------|----------|
| **FAQ Rich Results** | Ograniczone do stron rządowych/medycznych | Sierpień 2023 |
| **HowTo Rich Results** | Wyłączone całkowicie | Wrzesień 2023 |

## Priorytety wg typu strony

| Typ strony | Top 3 SERP features do targetowania |
|------------|-------------------------------------|
| SaaS Homepage | Sitelinks, Knowledge Panel, Reviews |
| SaaS Blog | Featured Snippet, PAA, Image Pack |
| SaaS Pricing | Product + Offer, Sitelinks |
| SaaS Docs | Featured Snippet, Sitelinks, Breadcrumbs |
| E-commerce | Product, Reviews, Image Pack |
| Local Business | Local Pack, Reviews, Knowledge Panel |

## Jak sprawdzić obecność SERP features

1. **Ręcznie:** Wyszukaj keyword w Google → sprawdź jakie features się pojawiają
2. **Programowo:** DataForSEO SERP API → `serp_features` w response
3. **Narzędzia:** Ahrefs SERP Features, Senuto SERP Analyzer
