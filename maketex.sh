#!/bin/bash

dirfile=_dir.tex

process_exercise() {
	echo "doing exercise $1" >&2
	cat $1
}

process_dir() {
	# $1 = directory to cd
	
	echo "processing $1" >&2
	mydir="$1"
	pushd "$mydir" >/dev/null
	if [ -f $dirfile ] ; then
		cat $dirfile
	fi
	started=no
	while read e ; do
		[ "$e" = "./$dirfile" ] && continue
		if [ $started != yes ] ; then
			started=yes
			echo "\startExercises"
		fi
		echo "doing $e" >&2
		cat "$e"
	done < <(find . -maxdepth 1 -type f -iname '*.tex' | sort -V )
	[ $started = yes ] && echo "\finishExercises"

	find . -maxdepth 1 -type d | sort -V | while read d ; do
		[ "$d" = '.' ] && continue

		( process_dir "$d" )
	done
	popd >/dev/null
}

dir=tex_out
fn=eyah.tex

mkdir -p $dir
cat tex/header.tex  > $dir/$fn
for i in *.chapter ; do process_dir $i >> $dir/$fn ; done
cat tex/footer.tex >> $dir/$fn
pushd $dir
pdflatex $fn && pdflatex $fn
popd
