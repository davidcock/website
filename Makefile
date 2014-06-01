default: index.html

index.html: index_pre.html publications.html
	awk -f tools/header.awk < index_pre.html > index.html
	cat publications.html >> index.html
	awk -f tools/footer.awk < index_pre.html >> index.html

publications.html: publications.bib
	bibtex2html -nodoc $<

clean:
	rm -f index.html publications.html publications_bib.html

.PHONY: default clean
