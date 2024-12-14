README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Project Details" >> README.md
	echo "" >> README.md
	echo "**Generated on:** $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
	echo "" >> README.md
	echo "**Lines of Code in guessinggame.sh:** $$(wc -l guessinggame.sh | awk '{print $$1}')" >> README.md

.PHONY: clean
clean:
	rm -f README.md