# Digitus

[![Build Status](https://travis-ci.org/pages-themes/cayman.svg?branch=master)](https://travis-ci.org/pages-themes/cayman) [![Gem Version](https://badge.fury.io/rb/jekyll-theme-cayman.svg)](https://badge.fury.io/rb/jekyll-theme-cayman)

*Bruker [Cayman](https://github.com/pages-themes/cayman), et Jekyll theme for GitHub Pages.*

>**Det viktigste** med disse nettsidene er å holde informasjonen up to date. De kan enkelt oppdateres i `_config.yml`:

1. Klon ned repositoriet: `git clone https://github.com/digitus-uio/digitus-uio.github.io.git`.
2. Åpne `_config.yml` (se [Informasjon](#informasjon) for forklaring av den fila) i en teksteditor, gjør de nødvendige endringene og lagre.
3. `cd` til der du klonet repoet, `git commit -a` og `git push` for å publisere endringene.

## Kjøring
For å gjøre designendringer på nettsiden, er det nyttig å kjøre det lokalt:
1. Kjør `script/bootstrap` i rotmappa til repoet for å installere nødvendige dependencies.
2. Kjør `bundle exec jekyll serve` for å starte serveren med forhåndsvisning.
3. Besøk `localhost:4000` for å åpne forhåndsvisningen.

NB: Er ikke hot reload, så må refreshe siden for hver endring.

NB2: Hvis endringer blir gjort i `config`, må man avslutte bundle og restarte fra punkt 2.

### Erfaringer fra mac
- Kan få feilmelding `While executing gem ...` Tving det gjennom med `sudo script/bootstrap`. ([Se stack overflow løsning](https://github.com/digitus-uio/digitus-uio.github.io.git)).

### Erfaringer fra wsl2 windows
- Fikk noen problemer når jeg prøvde å kjøre 'script/bootstrap', løste seg etter at jeg kjørte 'sudo apt-get install ruby-dev'.
- I tillegg kan det være nødvendig å laste ned ruby og rbenv. [link til fin tutorial her](https://www.osradar.com/how-to-install-ruby-on-rails-on-ubuntu-20-04/)


## Endring av informasjon på siden

Alle endringer på den informasjonen som blir vist på nettsiden (bortsett fra vedtektene) settes i de gitte variablene i `_config.yml`.

Bilder som blir vist på nettsiden ligger nå lagret i `assets/pictures`, og har dermed sourcen `"assets/pictures/bildenavn.jpg"`

### Styremedlemmer
De viktigste å endre jevnlig er styremedlemmene som ligger i en array under `board-members`:

```yml
board_members: [
   {
      name: "[navn på styremedlem]"
      img: "[source til bilde]"
      role: "[rolle]"
      mail: "[mail]"
      linkedin: "[url til linkedin]"
      class: "[klassetrinn på studiet]"
   },
]
```

### Arrangementer for semesteret

I tillegg må bildet med tidslinjen over semesterets arrangementer oppdateres. Dette må både lastes opp til github i `assets/pictures`, og linken må oppdateres i `config`:
```yml
events: "[source]"
```

### Sponsor
Ved bytte av sponsor byttes variablene som heter noe med `partner` ut.

### Vedtekter
Vedtektene ligger som en egen Markdown-fil. Ved vedtektsendringer er det lettest å generere ny markdown-fil fra vedtektene i Google docs. Det kan gjøres med en add-on:
1. "Add-ons" i menyen i docs
2. "Docs to markdown" (last den ned hvis du ikke har den)
3. Trykk på "Markdown"
4. Kopier teksten og bruk det til å erstatte innholdet i `digitus_vedtekter.md`

### Div

Følgende valgfrie variabler kan også bli satt (men er ikke så viktige for oss):

```yml
show_downloads: ["true" eller "false" for å indikere om en download URL blir gitt]
google_analytics: [Google Analytics tracking ID]
```

## Endring av design

Designendringer på hovedsiden gjøres i `/_layouts/default.html` (strukturelle endringer) og i `/assets/css/style.scss` (styling).

Nye undersider lages det egen HTML-fil for som legges i `_layouts`. Pass på å bruke header og footer fra hovedsiden sånn at siden blir konsekvent. For å få linket mellom HTML-filen og url, må det lages en Markdown-fil i rotmappa med samme navn som undersiden (f.eks. `vedtekter.md` for `digitusuio.no/vedtekter`) med følgende innhold:

```
---
layout: {navn på html-fila}
---

Text that has to be here
```


## Running tests

The theme contains a minimal test suite, to ensure a site with the theme would build successfully. To run the tests, simply run `script/cibuild`. You'll need to run `script/bootstrap` once before the test script will work.
