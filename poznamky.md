# Relační model, relační algebra

```
SELECT DISTINCT specifikace_sloupcu
FROM specifikace_zdroje
[WHERE podminka_selekce]
```

- `DISTINCT` tam je kvůli relační algebře, ta obsahuje pouze unikátní prvky

## Relace vs databázové tabulky

### Podobnosti

- relace (množina n-tic) = tabulka
- schéma relace = záhlaví tabulky
- jméno atributu = jméno sloupce
- n-tice = řádek tabulky

### Odlišnosti

- relace neobsahuje duplicitní n-tice
- v relaci nezáleží na pořadí n-tic

## Relační model dat

`(R,I)` je schéma relační databáze, kde:
- `R` je množina relací a
- `I` je množina integritních omezení

Slabá entita potřebuje pro identifikaci cizi klice

### Relacni deleni

A[x, y] deleno B[y]

takova x z A, kde jsou vsechny y v A z B
