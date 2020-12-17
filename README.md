# A Vim plugin for the SIL language.

`sil.vim` aims to provide basic language support in (Neo)Vim for the SIL language developed at
Symmetry Investments, such as syntax colouring and indentation.

More advanced features like integrating the REPL or adding LSP support are not really considered at
this point.

## Installation.

It's hosted on GitHub to allow easy installation via a plug-in manager.  For instance, I use VimPlug
and if you do too then place this in your `.vimrc`:

```vim
Plug 'symmetryinvestments/sil.vim'
```

and then run the following in Vim:

```vim
:source %
:PlugInstall
```

## Alternatives

SIL support for other (inferior) editors can be found [here](https://git.symmetry.dev/symmetry/code/SIL/tooling).
