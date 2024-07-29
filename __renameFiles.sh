#!/bin/bash
echo "Renaming the files with text 'Slide' in the file name!"

num=$((0))
for i in {A..Z}
do
	for j in {A..Z}
	do
		for k in {A..Z}
		do
			for l in {A..Z}
			do
				num=$(( $num + 1 ))
				oldFileName=Slide"$num".JPG
				newFileName=Slide"$i$j$k$l".JPG
				if test -f "$oldFileName";
				then
					echo "$oldFileName to $newFileName"
					mv $oldFileName $newFileName
				else
					echo "$((num - 1)) File name change complete"
					exit 0
				fi
			done

		done
	done
done
