
serve:
	@npm start

static:
	@cd htmls && buster generate --domain=localhost:2368 && buster preview

.PHONY: serve static
