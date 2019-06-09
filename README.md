# Export to Fountain

Exports an OmniOutliner 5+ outline and notes to Fountain or Markdown.

## Fountain?

[Fountain][1] is a plain-text format for writing screenplays, inspired by John Gruber's [Markdown][2].

This script converts an OmniOutliner outline to Fountain's outline format, which uses Markdown-compatible heading markers for each outline level (or "section"). and lines starting with `=` as "synopses". Notes in the OmniOutliner outline will become "synopses" in Fountain, which are simply lines that start with `=` characters.

```markdown
# Act I

## Scene 1

= We meet our heroine just leaving her job in downtown Los Angeles.

## Scene 2

= She narrowly misses being hit by a falling safe.
```

[1]: https://fountain.io
[2]: https://daringfireball.net/projects/markdown/

## Requirements

* OmniOutliner 5+ (the Omni JavaScript Automation system is required).
* Something capable of processing Fountain or Markdown.

## Installation

1. In OmniOutliner 5, go to the **Scripts** menu in the menu bar, and choose **Open Scripts Folder > Open OmniOutliner Scripts Folder**. This is the one with the scroll icon to the right. (If this menu is not visible, open the **Script Editor** application, choose **Preferences...** and confirm "Show Script menu in menu bar" is enabled.)
2. Put the file "Export as Fountain.scpt" in this folder.
3. Confirm "Export as Fountain" now appears in the Scripts menu when OmniOutliner is the frontmost application.

## Usage

Choose "Export as Fountain" from the Scripts menu. In the next dialog box, choose to save the Fountain text to the clipboard or to a file:

* Choose Save to Clipboard to put the Fountain text on the clipboard.
* Choose Save to File to get a save dialog box, prompting to save the outline as a new `.fountain` file.

## Saving to Markdown

The exporter makes no distinction between Markdown and Fountain, since the heading syntax is the same. Either rename the file from `*.fountain` to `*.md` or simply use the Save to Clipboard feature to paste Markdown in your editor of choice.

## Limitations

* Multi-paragraph notes will not be properly marked as synopses.
* If your outline has multiple columns, only the first one will be used. This is intentional, to let you use your own idiosyncratic metadata in your screenplay outlines (I have an extra column marked "Arc," for example, that shows which of the four [Dramatica][3] throughlines a given scene belongs to), but it may not be what you want.
* The script's conversion routine is *very* simple, and likely easily confused.

[3]: http://dramatica.com/theory/book/Foundations

## Contact

Github Repository: <https://github.com/chipotle/omnioutliner-fountain>  
License: MIT; see LICENSE file or <https://opensource.org/licenses/MIT>

Copyright 2019 Watts Martin  
Author Website: <https://coyotetracks.org>  
