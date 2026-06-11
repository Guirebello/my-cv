# my-cv

Resume written in [Typst](https://typst.app), using the [`clickworthy-resume`](https://typst.app/universe/package/clickworthy-resume) package.

## Requirements

- [Typst CLI](https://github.com/typst/typst) (`pacman -S typst`, `cargo install --locked typst-cli`, etc.)

Packages are downloaded automatically from Typst Universe on first compile.

## Generate the PDF

One-shot compile to `cv.pdf`:

```bash
typst compile cv.typ
```

Live preview — recompiles on every save:

```bash
typst watch cv.typ
```

Custom output path:

```bash
typst compile cv.typ output.pdf
```
