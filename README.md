# AlgebraicJulia pubs database

This is a database of clean bibtex files, managed using [pubs](https://github.com/pubs/pubs).

In your `.pubsrc` you should have the following to make sure that new entries are given the right name.

```
normalize_citekey = True
citekey_format = {author_last_name:l}_{short_title}_{year}
```

In order to export bibliographies for given projects, use `./extract.sh
$texfile > $bibfile`, and all citations in your tex file which exist in the
pubs database will be output into `$bibfile`. Specifically, the script looks
for `\cite{...}`. If you are citing in some other way, ask ChatGPT to rewrite
`./extract.sh` to also do that.
