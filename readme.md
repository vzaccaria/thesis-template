**Thesis template**

> A latex thesis template for my students

# Description

This is a fully working latex template which tries to conform by the Politecnico
di Milano standards for master thesis's production.

In principle, you shouldn't need anything else for running it besides `gnu make`
`pdflatex` and `pdftk`. Checkout `example.pdf` for an example of the output.

# Instructions

To compile the final thesis `complete.pdf`:

```sh
make -f makefile.mk complete.pdf
```

This compiles and concatenates the `cover.pdf` and `thesis.pdf` into
`complete.pdf`.

# What to edit

- To modify title, authors and so on, edit only `src/data.tex`.
- Chapters must be stored in `src/chapters`
- Frontmatter data (e.g., acknowlegdements, dedications and so on) are stored in
  `src/frontmatter`.
- Bibliography must be written in the `biblio.bib` file
