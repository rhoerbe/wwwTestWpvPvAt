all:
	docker run -it --rm --hostname=jekyll-adoc --name=jekyll-adoc -v $(PWD):/var/data:Z r2h2/jekyll-adoc jekyll build

clean:
	rm -rf _site/

.PHONY: all clean
