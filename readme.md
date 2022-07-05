**Thesis template**

> A latex thesis template for Polimi students.

# Description

This is a fully working latex template which tries to conform by the Politecnico
di Milano standards for master thesis's production.

The current template is the "Classical format thesis" published on October 2021
by the Scuola 3I @ Polimi [^1]; I've just modified the structure to define thesis data 
into a single data file (`src/data.tex`), added a makefile for compiling the thesis and a folder for
each chapter's file. 

The Scuola 3I mandates that, for a thesis with a reviewer, an extended six page
executive summary must be provided; this abstract must be written accoridng to
the Executive Summary template [^2].

In alternative, the CCS of computer science and engineering allows a Journal
format (30 pages) to be written according to another template [^3].

In principle, you shouldn't need anything else for running it besides `gnu make`
`pdflatex`. Checkout `thesis.pdf` for an example of the output.

# Instructions

To compile the final thesis `complete.pdf`:

```sh
make -f makefile.mk complete.pdf
```

This compiles and concatenates the `cover.pdf` and `thesis.pdf` into
`complete.pdf`.

# What to edit

- To modify title, authors and so on, edit only `src/data.tex`.
- Chapters must be stored in `src/chapters`. Remember to include the file in
  `thesis.tex` with `\input`.
- Frontmatter data (e.g., acknowlegdements, dedications and so on) are stored in
  `src`.
- Bibliography must be written in the `biblio.bib` file

# Thesis writing prompts

For some up-to-date suggestions on the thesis TOC and writing prompts, please
[check out this address](https://www.notion.so/Thesis-writing-prompts-445476388185454ba03440220fa00a64).

[^1]: https://www.ingindinf.polimi.it/it/didattica/lezioni-e-esami/esami-di-laurea-e-laurea-magistrale and https://www.overleaf.com/latex/templates/classical-format-thesis-scuola-di-ingegneria-industriale-e-dellinformazione-politecnico-di-milano/dkmvtndqkyxg

[^2]:  https://www.overleaf.com/latex/templates/executive-summary-scuola-di-ingegneria-industriale-e-dellinformazione-politenico-di-milano/yfvqyfyyhwrp

[^3]:  https://www.overleaf.com/latex/templates/article-format-thesis-scuola-di-ingegneria-industriale-e-dellinformazione-politenico-di-milano/vtqgsrqwzdmy
