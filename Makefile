
all: css compressed

css:
	sass style.scss:style.css

compressed:
	sass -t compressed style.scss:style.min.css

debug:
	sass --debug-info style.scss:style.css

watch:
	sass --watch --debug-info style.scss:style.css

sync:
	# scp style.css kimsufi:saimon.org/public/linuxfr/linuxfr.css
	scp style.min.css kimsufi:saimon.org/public/linuxfr/linuxfr.min.css
