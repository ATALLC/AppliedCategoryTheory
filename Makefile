.PHONY: pack

OUTPUT_FILE := /tmp/act-pack.txt
INCLUDE_ROOTS := AGENTS.md README.md Makefile .agents .agentsignore archive demos katas logseq/pages pages resources sessions
INCLUDE_PATTERNS := *.md *.org Makefile .agentsignore

FIND_ARGS := -name "$(firstword $(INCLUDE_PATTERNS))"
FIND_ARGS += $(foreach p,$(wordlist 2,$(words $(INCLUDE_PATTERNS)),$(INCLUDE_PATTERNS)),-o -name "$(p)")

pack:
	@echo "Creating $(OUTPUT_FILE)..."
	@echo "Including roots: $(INCLUDE_ROOTS)"
	@echo "Including patterns: $(INCLUDE_PATTERNS)"
	@find $(INCLUDE_ROOTS) \
		\( -type d \( -name node_modules -o -name .git -o -path '.agents/handoffs' -o -path '.agents/logs' \) \) -prune -o \
		-type f \( $(FIND_ARGS) \) -print | sort | while read -r file; do \
			echo "========== FILE: $$file =========="; \
			cat "$$file"; \
			echo ""; \
			echo "========== END FILE =========="; \
			echo ""; \
		done > $(OUTPUT_FILE)
	@echo "" >> $(OUTPUT_FILE)
	@echo "========== DIRECTORY LISTING: ls -lR ===========" >> $(OUTPUT_FILE)
	@ls -lR $(INCLUDE_ROOTS) >> $(OUTPUT_FILE)
	@echo "" >> $(OUTPUT_FILE)
	@echo "========== END DIRECTORY LISTING ===========" >> $(OUTPUT_FILE)
	@echo "Done! Created $(OUTPUT_FILE)"
