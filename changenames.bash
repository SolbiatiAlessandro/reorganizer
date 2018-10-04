# simple bash utilty to change filenames in target dir from AA.BB.CC.abc to CC.BB.AA.abc
target="target"
cd $target
for filename in *
do 
	splittedNames=(${filename//./ }) # this split the string by '.'
	newName="${splittedNames[2]}.${splittedNames[1]}.${splittedNames[0]}.${splittedNames[3]}" # this reconstruct the string in reversed order
	mv $filename $newName  # rename files
done
