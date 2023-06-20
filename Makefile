all: archive


archive:
	git archive -o exfat-utils.zip --prefix= HEAD

