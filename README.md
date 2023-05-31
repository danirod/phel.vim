# phel.vim

Support for [The Phel Langauge](https://phel-lang.org) in Vim.

**Work in progress**, caution

# Tasks

- [ ] Add syntax rules
- [ ] Add indent rules
- [ ] Add ALE fixer for running `phel format`

# Known issues

The `ftdetect` may or may not work, which means that opening a .phel file may or may not enable syntax.

If it doesn't work, at the moment you can `:setf phel` by yourself.
