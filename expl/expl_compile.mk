EXPL_COMPILER = ./expl
EXPL_SOURCES := $(wildcard expl_progs/*.expl)

explc:
	@for f in $(EXPL_SOURCES); do \
		out=`$(EXPL_COMPILER) $$f 2>&1`; \
		out=$$(echo "$$out" | sed '/^$$/d'); \
		if [ -n "$$out" ]; then \
			echo "$$out"; \
		fi; \
		echo "$$out" | grep -iq "failed\|unknown"; \
		if [ $$? -eq 0 ]; then \
			echo "ERROR: $$f"; \
		else \
			echo "SUCCESS: $$f"; \
		fi; \
	done

.PHONY: explc
