list.opml: list.txt
	gawk -f opml.awk $< | xmllint --format - > $@

clean:
	rm -f list.opml

.PHONY: clean
