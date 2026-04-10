# Jak tworzyć skille agentowe

Przewodnik tworzenia skilli dla Claude Code, Gemini CLI i Cursor.

## Czym jest skill?

Skill to plik Markdown (SKILL.md) z instrukcjami dla agenta AI. Gdy agent rozpozna pasujący kontekst (np. użytkownik mówi "napisz artykuł SEO"), automatycznie ładuje odpowiedni skill i postępuje wg instrukcji.

## Anatomia skilla

### 1. Frontmatter (YAML)

```yaml
---
name: nazwa-skilla
description: >
  Opis ~100 słów: co skill robi, kiedy go używać.
  Triggery: "fraza 1", "fraza 2", "fraza 3".
---
```

**Pole `description`** jest kluczowe — agent dopasowuje skille po opisie. Umieść tam:
- Co skill robi (1-2 zdania)
- Kiedy go używać (scenariusze)
- Triggery — frazy aktywujące (w cudzysłowach)

### 2. Sekcje SKILL.md

| Sekcja | Obowiązkowa? | Opis |
|--------|:---:|------|
| Kiedy używać | Tak | Scenariusze użycia + triggery |
| Zależności | Nie | Inne skille wymagane/opcjonalne |
| Instrukcje | Tak | Krok po kroku co agent ma zrobić |
| Przykłady | Tak | Szablony, przykładowe outputy |
| Checklist | Nie | Lista kontrolna jakości |
| Anty-wzorce | Tak | Czego unikać (explicit deny) |
| Pułapki | Nie | Typowe błędy i jak ich uniknąć |
| Cross-references | Nie | Powiązania z innymi skillami |

### 3. Pliki referencyjne (opcjonalne)

Duża wiedza domenowa → osobne pliki w `references/`:
```
skill-name/
├── SKILL.md              ← główny plik (~1000-2500 tokenów)
├── references/
│   ├── benchmarks.md     ← dane, metryki, thresholds
│   └── frameworks.md     ← frameworki, modele
└── templates/
    └── output-template.md ← szablon outputu
```

Agent ładuje referencje lazy — tylko gdy potrzebuje. Dzięki temu SKILL.md jest lekki.

## Budżet tokenów

| Element | Max tokenów | Uwagi |
|---------|-------------|-------|
| SKILL.md | 2500 | Główne instrukcje |
| Referencje (łącznie) | 7500 | Ładowane lazy |
| Razem per skill | 10000 | Limit techniczny |

W sesji agenta ładuje się 2-4 skille jednocześnie. Lżejszy skill = szybszy agent.

## Dobre praktyki

### Triggery
- Używaj polskich fraz ("napisz artykuł", "audyt SEO")
- Dodaj też angielskie warianty ("write article", "SEO audit")
- 5-10 triggerów per skill — nie za mało, nie za dużo

### Instrukcje
- Pisz imperatywnie ("Sprawdź", "Wygeneruj", "Przeanalizuj")
- Numeruj kroki
- Dodaj warunki ("Jeśli brak danych → zapytaj o...")

### Anty-wzorce
- Explicit deny list > ogólne "nie rób źle"
- Wyjaśnij DLACZEGO to anty-wzorzec
- Podaj alternatywę

### Szablony
- Użyj placeholderów: `[Nazwa produktu]`, `[Grupa docelowa]`
- Podaj przykład wypełnionego szablonu

## Instalacja

### Claude Code
```bash
cp -r moj-skill ~/.claude/skills/moj-skill
```

### Gemini CLI
```bash
cp -r moj-skill ~/.gemini/skills/moj-skill
```

### Cursor
Skopiuj zawartość SKILL.md do `.cursor/rules/moj-skill.mdc`.

## Testowanie

1. Zainstaluj skill
2. Rozpocznij nową sesję agenta
3. Powiedz trigger — czy skill się aktywował?
4. Wykonaj pełny workflow — czy output jest poprawny?
5. Sprawdź edge cases — co gdy brak danych? Co gdy input jest w EN?
