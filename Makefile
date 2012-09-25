
all: css

css:
	sass -t compressed style.scss:style.min.css

watch:
	sass --watch --debug-info style.scss:style.css

sync:
	scp style.css kimsufi:saimon.org/public/linuxfr/linuxfr.css
