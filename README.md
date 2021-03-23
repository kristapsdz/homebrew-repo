This is the [Homebrew](https://brew.sh) repository for some
[BSD.lv](https://www.bsd.lv) software.  I tend to forget about these, so
if you see that the software version is old, please send me an email or
raise an issue!

To use this tap, run:

```sh
brew tap kristapsdz/repo
```

You can then run the usual commands for acquiring the software. For example:

```sh
brew install sblg
brew uninstall sblg
```

The following formulae are available:

- [divecmd](https://kristaps.bsd.lv/divecmd): download and process dive computer data
- [kcgi](https://kristaps.bsd.lv/kcgi): minimal CGI and FastCGI library in C
- [lowdown](https://kristaps.bsd.lv/lowdown): simple Markdown translator
- [openradtool](https://kristaps.bsd.lv/openradtool): application source generator
- [sblg](https://kristaps.bsd.lv/sblg): simple off-line blog utility
- [sqlbox](https://kristaps.bsd.lv/sqlbox): database access library

The following have been removed:

- [ksql](https://kristaps.bsd.lv/ksql): replaced by sqlbox
- [libdiff](https://github.com/kristapsdz/libdiff): merged into lowdown
- [kwebapp](https://kristaps.bsd.lv/kwebapp): replaced by openradtool
