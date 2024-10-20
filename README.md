
# vault

My obsidian markdown notes

To use, follow these steps:

```sh
git clone https://github.com/bs10x/vault.git
```


___

## Tips and Tricks

 ```shell
GIT_LFS_SKIP_SMUDGE=1 git clone <URL>   # skip lfs blobs
git clone <URL> --depth=N	      # shallow clone only HEAD~N
git lfs pull --include “GLOB“	  # git-lfs pull only GLOB
```


## Problems

>[!todo]- rename stuff
> AuD -> A&D
> AuW -> A&W
> TIN -> TI

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

> [!problem]- launch terminal from obsidian messes up git
> when hotkey to launch terminal, not in git??
> not a git directory, eth (top root) also not git
> but if another session is active (navigate to vault or eth), git works
>

>[!note]- paste pdf selection as image to anki
> want to paste pdf selection as image, so it's synced to the web etc.

>[!note]- serve ollama
> ```bash
> open --background docker
> ollama serve
>
> 'obsidian://advanced-uri?vault=vault&commandid=workspace%253Anew-> tab'
> 'obsidian://advanced-uri?vault=vault&commandid=obsidian-custom-> frames%253Aopen-custom-frames-ollama'
> ```

> [!note]- make timer web frame adapt to theme
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

> [!note] var/attachment
> attachment management fucked shit up and put normal pdfs into the wrong folder
> 


> [!info]- utility plugin list
> 
> - automatic table of content  
> - language tool integration
> - zotero integration
> - open in new tab
> - flashcards
>   

> [!info]- usage plugin list
> 
> - global search and replace
> - folder notes
> - user plugin
> - style settings

>[!info]- toggl hide ugly big header
> - delete div `<div class="css-1a5pxsz-TopResponsiveBarContainer e2h8eq20">` 
> - disable `:root { --top-responsive-bar-height: 80px; }`


old mathjax preamble:
```latex
\newcommand{\Z}{\mathbb Z}
\newcommand{\N}{\mathbb N}
\newcommand{\Q}{\mathbb Q}
\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\newcommand{\O}{\mathcal O}
\newcommand{\square}{\square}
\newcommand{\etc}{\text{etc.}}
\newcommand{\def}{\overset{\text{def.}}{=}}
\newcommand{\empty}{\varnothing}
\newcommand{\E}{\mathbb E}
\newcommand{\nimpl}{\kern.6em\not\kern -.6em \implies}
```



# Miscellaneous

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
