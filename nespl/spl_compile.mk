SPL_COMPILER = ./spl
SPL_SOURCES := $(wildcard spl_progs/*.spl)

splc:
	@for f in $(SPL_SOURCES); do \
		out=`$(SPL_COMPILER) $$f 2>&1`; \
		out=$$(echo "$$out" | sed '/^$$/d'); \
		if [ -n "$$out" ]; then \
			echo "$$out"; \
		fi; \
		echo "$$out" | grep -iq "error\|unknown"; \
		if [ $$? -eq 0 ]; then \
			echo "ERROR: $$f"; \
		else \
			echo "SUCCESS: $$f"; \
		fi; \
	done

.PHONY: splc
