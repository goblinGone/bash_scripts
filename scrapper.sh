#!/
curl -s -A "reddit scraper" "https://www.reddit.com/r/VillagePorn.json?limit=100" | \
jq '.' | \
grep "url_overridden_by_dest" | \
sed 's/\"url_overridden_by_dest\"\: //;s/ * //g;s/\"//g'
