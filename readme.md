**Thesis template**

> A latex thesis template for Polimi students.

# Description

This is a fully working latex template which tries to conform by the Politecnico
di Milano standards for master thesis's production.

The current template follows the guidelines published on October 2021 by the
Scuola 3I @ Polimi.

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
