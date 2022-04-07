# Transferleistung - Template

## Get Started
[Edit personal details](settings/config.tex) 
<br>

[Add introduction](pages/intro.tex) 
<br>
[Add pages](pages/) 
<br>
[Add conclusion](pages/conclusion.tex)
<br>

## Bibliography 

[Add sources](sources.bib) <br/>
```
@misc{<name>,
  title={<title>},
  author={<author>},
  year={<year>}
}
```
Other examples can be found at: [BibTex Entry Types](https://www.bibtex.com/e/entry-types/)
<br>
Cite using ```\cite{source} | \parencite[options][]{source}```
## Glossary & Appendix

[Add glossary entry](frame/glossary.tex)
<br/>
```
\newglossaryentry{<label>}{
	name={<name>},
	description={<description>},
	plural={<plural>}
}
```

[Add acronyms](frame/acronym.tex) 
<br/>
```
\newacronym{label}{acronym}{phrase}
```
Use acronym: ```\acrfull{label} | \acrlong{label} | \acrshort```

## Formatting

### Layout

| Shortcut | Parameters |
| :------: | :--------: |
| \\\\ | - | 
| \chapter | {name} |
| \section | {name} |

### Citation
| Shortcut | Parameters |
| :------: | :--------: |
| \cite | [options]{source} |
| \parencite | [options][]{source} |

### Images
| Shortcut | Parameters |
| :------: | :--------: |
| \img | imgLink |
| \svg | svgLink, caption, subCaption |

### Misc
| Shortcut | Parameters | 
| :------: | :--------: |
| \input | .tex - File |

## Tools
[Overleaf](https://www.overleaf.com/)
<br/>
[TeXiFy IDEA](https://plugins.jetbrains.com/plugin/9473-texify-idea) 
<br/>
[LaTeX Workshop (VS Code)](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) 
<br/>

## Documentation

[Official documentation](https://www.latex-project.org/help/documentation/)
<br>
[Overleaf documentation](https://de.overleaf.com/learn/latex/Creating_a_document_in_LaTeX)
<br>