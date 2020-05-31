
all:
	echo 'foo'

doc:
	Rscript -e 'devtools::document()'

install:
	cd ..; Rscript -e 'devtools::install("rzdr")'

build:
	make doc
	make install
