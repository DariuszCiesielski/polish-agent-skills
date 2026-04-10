# Schema.org — Status typów (aktualizacja: luty 2026)

> **Spis treści:** Aktywne typy | Ograniczone (FAQ) | Deprecated (HowTo, 9 innych) | Szablon walidacji | Generowanie schema (Organization, LocalBusiness, Article, Product, BreadcrumbList) | Narzędzia walidacji

## Aktywne (rekomenduj swobodnie)

| Typ | Kiedy używać | Rich result |
|-----|-------------|-------------|
| **Organization** | Strona główna firmy | Knowledge panel, logo |
| **LocalBusiness** | Firma z lokalizacją fizyczną | Local pack, mapy |
| **SoftwareApplication** | Strona aplikacji | App rich result |
| **Product** | Strona produktowa | Product snippet, cena |
| **Article** | Artykuł informacyjny | Article snippet |
| **BlogPosting** | Post blogowy | Article snippet |
| **Review** | Recenzja | Review snippet, gwiazdki |
| **AggregateRating** | Zbiorcza ocena | Rating stars |
| **BreadcrumbList** | Nawigacja breadcrumbs | Breadcrumb trail |
| **Person** | Profil autora/eksperta | Knowledge panel |
| **VideoObject** | Wideo na stronie | Video snippet, thumbnail |
| **Event** | Wydarzenie | Event listing |
| **JobPosting** | Oferta pracy | Job listing |
| **Course** | Kurs online | Course listing |
| **SoftwareSourceCode** | Repozytorium kodu | — |
| **BroadcastEvent** | Transmisja na żywo | Live badge |
| **Clip** / **SeekToAction** | Klipy w wideo | Key moments |

## Ograniczone

| Typ | Ograniczenie | Data zmiany |
|-----|-------------|-------------|
| **FAQ** | Tylko strony rządowe i medyczne | Sierpień 2023 |

**UWAGA:** Nie rekomenduj FAQ schema dla zwykłych stron biznesowych — Google je zignoruje. Jeśli strona już ma FAQ schema, nie usuwaj (nie szkodzi), ale nie dodawaj nowego.

## Deprecated (NIGDY nie rekomenduj)

| Typ | Data wycofania |
|-----|---------------|
| **HowTo** | Wrzesień 2023 |
| **SpecialAnnouncement** | Lipiec 2025 |
| **CourseInfo** | Czerwiec 2025 |
| **EstimatedSalary** | Sierpień 2025 |
| **LearningVideo** | Październik 2025 |
| **ClaimReview** | Listopad 2025 |
| **VehicleListing** | Grudzień 2025 |
| **Practice Problem** | Grudzień 2025 |
| **Dataset** | Grudzień 2025 |

## Szablon walidacji

Przy walidacji schema sprawdzaj:

1. **Typ** — czy jest aktywny? (patrz tabele wyżej)
2. **Wymagane pola** — każdy typ ma required properties (sprawdź schema.org)
3. **Format** — JSON-LD preferowany (nie Microdata, nie RDFa)
4. **Lokalizacja** — JSON-LD w `<head>` lub `<body>`, ale NIE w external JS file
5. **Timing** — schema w initial HTML (nie JS-injected z opóźnieniem)
6. **Spójność** — dane w schema muszą zgadzać się z widoczną treścią

## Generowanie schema — szablony

### Organization (strona główna)
```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "[NAZWA FIRMY]",
  "url": "[URL STRONY]",
  "logo": "[URL LOGO]",
  "description": "[OPIS]",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[ULICA]",
    "addressLocality": "[MIASTO]",
    "postalCode": "[KOD]",
    "addressCountry": "PL"
  },
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "[TELEFON]",
    "contactType": "customer service",
    "availableLanguage": ["Polish", "English"]
  },
  "sameAs": [
    "[FACEBOOK]",
    "[LINKEDIN]",
    "[TWITTER]"
  ]
}
```

### LocalBusiness
```json
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "[NAZWA]",
  "image": "[URL ZDJĘCIA]",
  "url": "[URL]",
  "telephone": "[TELEFON]",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[ULICA]",
    "addressLocality": "[MIASTO]",
    "postalCode": "[KOD]",
    "addressCountry": "PL"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "[LAT]",
    "longitude": "[LON]"
  },
  "openingHoursSpecification": [{
    "@type": "OpeningHoursSpecification",
    "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
    "opens": "09:00",
    "closes": "17:00"
  }]
}
```

### Article / BlogPosting
```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "[TYTUŁ MAX 110 ZNAKÓW]",
  "description": "[OPIS MAX 160 ZNAKÓW]",
  "image": "[URL OBRAZU]",
  "author": {
    "@type": "Person",
    "name": "[AUTOR]",
    "url": "[URL PROFILU AUTORA]"
  },
  "publisher": {
    "@type": "Organization",
    "name": "[NAZWA WYDAWCY]",
    "logo": { "@type": "ImageObject", "url": "[URL LOGO]" }
  },
  "datePublished": "[YYYY-MM-DD]",
  "dateModified": "[YYYY-MM-DD]"
}
```

### Product
```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "[NAZWA PRODUKTU]",
  "image": "[URL OBRAZU]",
  "description": "[OPIS]",
  "brand": { "@type": "Brand", "name": "[MARKA]" },
  "offers": {
    "@type": "Offer",
    "url": "[URL STRONY]",
    "priceCurrency": "PLN",
    "price": "[CENA]",
    "availability": "https://schema.org/InStock"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "[OCENA]",
    "reviewCount": "[LICZBA RECENZJI]"
  }
}
```

### BreadcrumbList
```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Strona główna", "item": "[URL]" },
    { "@type": "ListItem", "position": 2, "name": "[KATEGORIA]", "item": "[URL]" },
    { "@type": "ListItem", "position": 3, "name": "[STRONA]" }
  ]
}
```

## Narzędzia walidacji

1. **Google Rich Results Test** — https://search.google.com/test/rich-results
2. **Schema.org Validator** — https://validator.schema.org/
3. **Ręczna walidacja** — sprawdź JSON-LD w `<script type="application/ld+json">` w źródle strony
