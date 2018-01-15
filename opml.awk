BEGIN {
	print "<opml version=\"2.0\">"
	print "<head>"
	print   "<title>Feeds for Journalists</title>"
	printf  "<dateCreated>%s</dateCreated>", strftime("%FT%TZ", systime(), 1)
	print   "<docs>https://github.com/edavis/feedsForJournalists</docs>"
	print   "<ownerId>https://github.com/edavis</ownerId>"
	print "</head>"
	print "<body>"
}

{
	printf "<outline type=\"rss\" xmlUrl=\"%s\" text=\"%s\"/>", $0, $0
}

END {
	print "</body>"
	print "</opml>"
}
