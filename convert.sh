find . -name "*.html" -print0 |  xargs -0 -I {} pandoc -r html -w markdown+pipe_tables-simple_tables --wrap=preserve -o {}.md {}
autoload -U zmv
noglob zmv -W html/*.html.md md/*.md
find . -name "*.md" -print0 |  xargs -0 -I {} sed -i.bak '1d' {}
find . -name "*.md" -print0 |  xargs -0 -I {} sed -i.bak '$d' {}
rm **/*.bak
gco -- md/SUMMARY.md
gco -- md/README.md

