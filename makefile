PDF = file.pdf

install:
	pacman -S tesseract imagemagick
	cp vendor/spa.traineddata /usr/share/tessdata/
pdf2img:
	pdfimages -j $(PDF) imgs/$(PDF)-pagina

texto:
	make pdf2img
	./img2tif
	./tif2txt

traducir:
	make texto
	txt2trn


