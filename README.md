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

## Glossary

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

Use acronym: ```\gls{label} (acrfull on first use, then acrshort) | \acrfull{label} | \acrlong{label} | \acrshort{label}```

## Macros

### Native 
|    Macro    | Parameters |       Explanation        |                                                                Notes                                                                 |
|:-----------:|:----------:|:------------------------:|:------------------------------------------------------------------------------------------------------------------------------------:|
|    \\\\     |     -      |        Linebreak         |                                                        alternative: \newline                                                         |
|  \chapter   |   {name}   |   Start a new chapter    |                                                                                                                                      |
|  \section   |   {name}   |   Start a new section    |                                                                                                                                      |
| \subsection |   {name}   |  Start a new subsection  |                                                                                                                                      |
| \paragraph  |   {text}   |  Start a new paragraph   |                                                                                                                                      |
|   \label    |  {value}   | Add a key for references | To allow type interpolation use [prefixes for labels](https://en.wikibooks.org/wiki/LaTeX/Labels_and_Cross-referencing#Introduction) |

### Media
|      Macro       |      Parameters (optional in *cursive*)       |                                              Explanation                                              |                                    Notes                                    |
|:----------------:|:---------------------------------------------:|:-----------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------:|
| \valueOrDefeault |            parameter, defaultValue            |               Uses parameter if it contains a value, otherwise defaults to second value               |                                                                             |
|                  |                                               |                                                                                                       |                                                                             |
|      \image      |    *(subcaption)*, imgRef, caption, label     |                                             Inserts image                                             |                              **Types**:png,jpg                              |
|       \svg       |    *(subcaption)*, imgRef, caption, label     |                                              Inserts svg                                              |           Special configuration differs from generic ```\image```           |
|                  |                                               |                                                                                                       |                                                                             |
|   \tableStart    |                                               |                                          Starts a new table                                           |                       Requires ```\tableEnd``` after                        |
|    \tableEnd     |        *(subcaption)*,  caption, label        |                                          Ends current table                                           |                      Requires ```\tableStart``` before                      |
|                  |                                               |                                                                                                       |                                                                             |
|  \bargraphStart  |                                               |                                        Starts a new bar graph                                         | Requires ```\bargraphEnd```after<br><br>Add values using ```\coordinates``` |
|   \coordinates   |                  coordinates                  |                                 Inserts values into current bar graph                                 |                   Key-Value-Pairs as shown in the example                   |
|   \bargraphEnd   |        *(subcaption)*,  caption, label        |                                      Ends the current bar graph                                       |                    Requires ```\bargraphStart``` before                     |
|                  |                                               |                                                                                                       |                                                                             |
|     \easyPie     | *(options)*, data, caption, subcaption, label | Inserts a pie graph using the specified data. Can be [customized](templates/graphs.tex) with options  |                                                                             |



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
<br><br>
Cite using ```\autocite[prefix][suffix]{source}```

## Media

For ease of use there are various macros to create media.

Refer to [Templates](templates) and [Examples](examples) for further insight

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