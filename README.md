# Digitus

[![Build Status](https://travis-ci.org/pages-themes/cayman.svg?branch=master)](https://travis-ci.org/pages-themes/cayman) [![Gem Version](https://badge.fury.io/rb/jekyll-theme-cayman.svg)](https://badge.fury.io/rb/jekyll-theme-cayman)

*Bruker [Cayman](https://github.com/pages-themes/cayman), et Jekyll theme for GitHub Pages.*

>**Det viktigste** med disse nettsidene er å holde informasjonen up to date. De kan enkelt oppdateres i `_config.yml`:

1. Klon ned repositoriet: `git clone https://github.com/digitus-uio/digitus-uio.github.io.git`.
2. Åpne `_config.yml` (se [Informasjon](#informasjon) for forklaring av den fila) i en teksteditor, gjør de nødvendige endringene og lagre.
3. `cd` til der du klonet repoet, `git commit -a` og `git push` for å publisere endringene.

## Utvikling
For å gjøre designendringer på nettsiden, er det nyttig å kjøre det lokalt:
1. Kjør `script/bootstrap` i rotmappa til repoet for å installere nødvendige dependencies.
   1. På mac kan man få feilmelding: `While executing gem ...` ([Se stack overflow løsning](https://github.com/digitus-uio/digitus-uio.github.io.git)). Tving det gjennom med `sudo script/bootstrap`.
2. Kjør `bundle exec jekyll serve` for å starte serveren med forhåndsvisning.
3. Besøk `localhost:4000` for å åpne forhåndsvisningen.

NB: Er ikke hot reload, så må refreshe siden for hver endring.

NB2: Hvis endringer blir gjort i `config`, må man avslutte bundle og restarte fra punkt 2.


### Tilpasning

#### Informasjon

Alle endringer på den informasjonen som blir vist på nettsiden settes i de gitte variablene i `_config.yml`.
De viktigste å endre jevnlig er styremedlemmene som ligger i en array under `board-members`:

```yml
board_members: [
   {
      name: "[navn på styremedlem]"
      img: "[source til bilde]"
      role: "[rolle]"
      mail: "[mail]"
      linkedin: "[url til linkedin]"
   },
]
```

I tillegg må bildet med tidslinjen over semesterets arrangementer oppdateres. Dette må både lastes opp til github i `assets/pictures`, og linken må oppdateres i `config`:
```yml
events: "[source]"
```

Bilder som blir vist på nettsiden ligger nå lagret i `assets/pictures`, og har dermed sourcen `"assets/pictures/bildenavn.jpg"`{:.yml}

Følgende valgfrie variabler kan også bli satt (men er ikke så viktige for oss):

```yml
show_downloads: ["true" eller "false" for å indikere om en download URL blir gitt]
google_analytics: [Google Analytics tracking ID]
```

#### Design

Designendringer gjøres i `/_layouts/default.html` (strukturelle endringer) og i `/assets/css/style.scss` (styling).

### Running tests

The theme contains a minimal test suite, to ensure a site with the theme would build successfully. To run the tests, simply run `script/cibuild`. You'll need to run `script/bootstrap` once before the test script will work.
