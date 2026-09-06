# How to use Zotero for autosorting
This repository uses Zotero and the [zoteto-better-bibtex](https://github.com/retorquere/zotero-better-bibtex) plugin to auto-sort citations and highlight the author. To use this feature:
1. Install the [zoteto-better-bibtex](https://github.com/retorquere/zotero-better-bibtex) plugin.
2. Update the supplied `json` file (or `raw-postscript.txt` file) to match the user's name, along with any preferences for subcollection names.
3. Import the `json` settings file in the Better BibTeX settings. (**Note: If one would prefer to not overwrite their entire settings, simply copy-paste the `raw-postscript.txt` file into the `postscript` box under `Better BibTeX` -> `Export`**)
4. Create a `cv` collection in Zotero.
5. Create subcollections under `cv` with *the same names* as those listed in the `json` file.
6. Create citations within the subcollections.
7. Export `cv` using the Better BibLaTeX option.
8. Within `cv.tex`, use `\cvbibsection{Document Section Name}{JSONShortName}` (_Warning: If the subcollection is empty, adding this to the document will mess up the document formatting._)
9. Run `make`

Now, you can add new citations to Zotero, export, and rerun `make` to update your CV.
 
