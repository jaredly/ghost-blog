
serve:
	@npm start

static: make-static serve-static

update: make-static push-static

push-static:
	@cd htmls/static && git add . && git commit -a && git push

make-static:
	@cd htmls && buster generate --domain=localhost:2368

serve-static:
	@cd htmls && buster preview

.PHONY: serve static
