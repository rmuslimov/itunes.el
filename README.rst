Control Itunes from Emacs
=========================

Simple keybindings to control itunes app from emacs.

Usage
=====

1. Add ``itunes.el`` to your emacs path
2. Import as: ``(require 'itunes)``
3. Add convenient keybindings. Example may be::

   (global-set-key (kbd "C-c i n") 'itunes-next)
   (global-set-key (kbd "C-c i p") 'itunes-prev)

TODO
====

Add new commands if it may be useful
