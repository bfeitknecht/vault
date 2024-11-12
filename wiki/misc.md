
## Tips and Tricks

 ```shell
GIT_LFS_SKIP_SMUDGE=1 git clone <URL>   # skip lfs blobs
git clone <URL> --depth=N	      # shallow clone only HEAD~N
git lfs pull --include “GLOB“	  # git-lfs pull only GLOB
```

> [!info]- utility plugin list
> 
> - automatic table of content  
> - language tool integration
> - zotero integration
> - open in new tab
> - flashcards
> - [auto anki](https://github.com/cadrianxyz/obsidian-auto-anki)
>   

> [!info]- usage plugin list
> 
> - global search and replace
> - folder notes
> - user plugin
> - style settings


## Problems

- attachment management fucked shit up and put normal pdfs into the wrong folder
- want to paste pdf selection as image, so it's synced to the web etc.
- rename stuff
	- AuD -> A&D  
    - AuW -> A&W  
    - TIN -> TI
- ==minimal theme causes major lag==

>[!attention]- Time To Load Plugins
> Total plugin setup: 639ms
> code-styler: 64ms
> cm-editor-syntax-highlight-obsidian: 60ms
> pdf-plus: 54ms
> restore-tab-key: 43ms
> obsidian-git: 42ms
> dataview: 40ms
> obsidian-toggl-integration: 40ms
> omnisearch: 39ms
> obsidian-tasks-plugin: 37ms
> obsidian-latex-suite: 35ms
> obsidian-shellcommands: 28ms
> better-word-count: 27ms
> text-extractor: 25ms
> obsidian-statusbar-pomo: 21ms
> mermaid-tools: 18ms
> obsidian-style-settings: 10ms
> editing-toolbar: 9ms
> obsidian-advanced-uri: 8ms
> obsidian-qrcode-plugin: 6ms
> cmdr: 5ms
> vertical-tabs-view: 5ms
> homepage: 3ms
> statusbar-organizer: 3ms
> obsidian-plugin-groups: 3ms
> obsidian-hider: 2ms
> obsidian-editor-shortcuts: 2ms
> folders2graph: 2ms
> persistent-graph: 2ms
> obsidian-cursor-location-plugin: 2ms
> break-page: 1ms
> obsidian-show-file-path: 1ms
> remember-cursor-position: 1ms
> snippet-commands-obsidian: 1ms

> [!info]- launch terminal from obsidian messes up git
> when hotkey to launch terminal, not in git??
> not a git directory, eth (top root) also not git
> but if another session is active (navigate to vault or eth), git works
>

>[!info]- serve ollama
> ```bash
> open --background docker
> ollama serve
>
> 'obsidian://advanced-uri?vault=vault&commandid=workspace%253Anew-> tab'
> 'obsidian://advanced-uri?vault=vault&commandid=obsidian-custom-> frames%253Aopen-custom-frames-ollama'
> ```

> [!info]- make timer web frame adapt to theme
> ```javascript
> // Check to see if Media-Queries are supported
> if (window.matchMedia) {
>   // Check if the dark-mode Media-Query matches
>   if(window.matchMedia('(prefers-color-scheme: dark)').matches){
>     // Dark
>   } else {
>     // Light
>   }
> } else {
>   // Default (when Media-Queries are not supported)
> }
> ```
> css styles need !important tag

>[!info]- toggl hide ugly big header
> - delete div `<div class="css-1a5pxsz-TopResponsiveBarContainer e2h8eq20">` 
> - disable `:root { --top-responsive-bar-height: 80px; }`


# Callout Styles

>[!note]

>[!tldr]

>[!info]

>[!todo]

>[!hint]

>[!check]

>[!help]

>[!warning]

>[!fail]

>[!danger]

>[!bug]

>[!example]

>[!cite]

```
%%
comment
%%

<!--
comment
-->
```


# Testing




```tikz
\usepackage{tikz-cd}
\begin{document}

\begin{tikzcd}
	{V'} &&&& {W'} \\
	\\
	\\
	& X && Y \\
	\\
	\\
	V &&&& W
	\arrow["{A'}", from=1-1, to=1-5]
	\arrow[from=1-1, to=4-2]
	\arrow[from=1-5, to=4-4]
	\arrow["{\psi_{W}}", dashed, tail, from=1-5, to=7-5]
	\arrow[from=4-2, to=1-1]
	\arrow["T", from=4-2, to=4-4]
	\arrow[from=4-2, to=7-1]
	\arrow[from=4-4, to=1-5]
	\arrow[from=4-4, to=7-5]
	\arrow["{\psi_{V}}", dashed, tail, from=7-1, to=1-1]
	\arrow[from=7-1, to=4-2]
	\arrow["A", from=7-1, to=7-5]
	\arrow[from=7-5, to=4-4]
\end{tikzcd}

\end{document}
```


https://q.uiver.app/#q=WzAsNixbMCwwLCJWJyJdLFs0LDAsIlcnIl0sWzEsMiwiWCJdLFszLDIsIlkiXSxbMCw0LCJWIl0sWzQsNCwiVyJdLFswLDEsIkEnIl0sWzEsNSwiXFxwc2lfe1d9IiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiwzLCJUIl0sWzQsMCwiXFxwc2lfe1Z9IiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibW9ubyJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCw1LCJBIl0sWzAsMl0sWzQsMl0sWzIsNF0sWzIsMF0sWzEsM10sWzMsMV0sWzMsNV0sWzUsM11d
