
all: clean process report open

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

