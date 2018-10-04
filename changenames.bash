# simple bash utilty to change filenames in target dir from AA.BB.CC.abc to CC.BB.AA.abc
target="target"
for filepath in "$target/*"
do 
	echo $filepath
	filename=${filepath:${#target}+1} # this slice the string without foldername at the beginning
	splittedNames=(${filename//./ }) # this split the string by '.'
	newName="${splittedNames[2]}.${splittedNames[1]}.${splittedNames[0]}.${splittedNames[3]}" # this reconstruct the string in reversed order
	newPath="$target/$newName"
	echo $filepath $newPath
	mv $filepath $newPath  # rename files
done
