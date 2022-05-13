# Resume

Resumes are generated in different formats from
a single [markdown file](/resume.md) using [Pandoc](https://pandoc.org/).
A [Github action](https://github.com/rengabkg/resume/actions/workflows/publish.yml)
builds and publishes resume files to Github Pages.

Resumes can be accessed at:
- [PDF version](https://rengabkg.github.io/resume/RengaBashyam.pdf)
- [HTML version](https://rengabkg.github.io/resume/RengaBashyam.html)
- [Text version](https://rengabkg.github.io/resume/RengaBashyam.txt)

## Build dependencies

- pandoc
- [wkhtmltopdf](https://wkhtmltopdf.org/)
(pandoc is configured to generate PDF from HTML using this tool)
