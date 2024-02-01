RESUME_FILE_NAME = RengaBashyam
RESUME_PAGE_TITLE = Renga Bashyam - Resume
OUT_DIR = output
RESUME_PATH = $(OUT_DIR)/$(RESUME_FILE_NAME)

all: $(RESUME_PATH).html $(RESUME_PATH).pdf $(RESUME_PATH).txt $(OUT_DIR)/.nojekyll

$(RESUME_PATH).html: resume.md styles/resume.css
	@mkdir -p $(OUT_DIR)
	@pandoc --standalone --embed-resources \
		--css styles/resume.css \
		--from markdown-auto_identifiers --to html \
		--metadata pagetitle="Resume - Renga Bashyam" \
		--output $@ $<

$(RESUME_PATH).pdf: resume.md styles/resume.css
	@mkdir -p $(OUT_DIR)
	@pandoc --standalone --embed-resources \
		--css styles/resume.css \
		--from markdown-auto_identifiers --to pdf \
		--metadata pagetitle="Resume - Renga Bashyam" \
		--pdf-engine=wkhtmltopdf \
		--variable=margin-top:0px \
		--variable=margin-left:0px \
		--variable=margin-right:0px \
		--variable=margin-bottom:0px \
		--variable=papersize:a4 \
		--output $@ $<

$(RESUME_PATH).txt: resume.md
	@mkdir -p $(OUT_DIR)
	@pandoc --standalone \
		--from markdown-auto_identifiers --to rst \
		--output $@ $<

 $(OUT_DIR)/.nojekyll:
	@mkdir -p $(OUT_DIR)
	@touch $@

clean:
	@rm -rf $(OUT_DIR)

.PHONY: clean
