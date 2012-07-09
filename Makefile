
default:
	@echo
	@echo "To install dependencies, run 'make install'."
	@echo "To build reports and open, run 'make run'."
	@echo

run: clean process report open

clean:
	@rm -f ./build/months/*.csv
	@rm -f ./build/summary/*.csv
	@rm -f ./build/db/*.db
	@rm -f ./out/*.csv
report:
	@bin/report.bash

process:
	@bin/process.bash

open:
	@gnome-open ./out/expenses.csv

install:
	@sudo apt-get install csvtool
	@sudo apt-get install sqlite3

