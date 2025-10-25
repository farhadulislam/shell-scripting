
#rename file formats
#ls | cut -d. -f1 | xargs -I {}  mv {}.txt {}.text

# renaming file
#for file in *; do [ -f "$file" ] && mv "$file" "tech_$file"; done

# rename again if you have renamed with incorrect prefix
#for file in tech_*; do mv "$file" "${file/tech_/tech_arch_}"; done

#To change the file extension of all .txt files to .pdf in the current directory, you can use this Bas
#for file in *.txt; do mv "$file" "${file%.txt}.pdf"; done

#Amend all file names with a prefix java. Files may already contain java or Java - both must be replaced with 'java' 
#for file in *; do mv "$file" "$(echo "$file" | sed -e 's/[Jj]ava_/java_/g' -e 's/^[Jj]ava/java_/')"; done

# The above changes 'java' globally, use below to change only the prefix 'java'
#for file in *; do mv "$file" "$(echo "$file" | sed -e 's/^[Jj]ava/java_/')"; done

#To append a sequence of numbers like J001, J002, J003, etc., to all files that start with java and end with the .pdf extension, you can use the following Bash command:

counter=1;
for file in java*.pdf; do
  newname=$(printf "J%03d_%s" "$counter" "$file")
  mv "$file" "$newname";
  counter=$((counter + 1));
done

#To prepend the sequence (java_001, java_002, etc.) by replacing the existing java prefix, you can use this refined Bash command:

counter=1;
for file in java*.pdf; do
  newname=$(printf "java_%03d_%s" "$counter" "${file#java_}")
  mv "$file" "$newname";
  counter=$((counter + 1));
done

Explanation:
counter=1: Initializes the counter.
for file in java*.pdf: Loops over all files that start with java and end with .pdf.
${file#java_}: Removes the existing java prefix from the file name.
newname=$(printf "java_%03d_%s" "$counter" "${file#java_}"):
java_%03d formats the prefix as java_001, java_002, etc.
%s adds the rest of the file name after removing the original java prefix.
mv "$file" "$newname": Renames the file to the new format.
counter=$((counter + 1)): Increments the counter for the next file.
This will rename files like java_example.pdf to java_001_example.pdf, java_report.pdf to java_002_report.pdf, and so on.


#To replace the prefix java_001, java_002, etc., with just java, you can use the following Bash command:

for file in java_[0-9][0-9][0-9]*.pdf; do
  newname=$(echo "$file" | sed -e 's/^java_[0-9]\{3\}/java/')
  mv "$file" "$newname"
done
Explanation:
for file in java_[0-9][0-9][0-9]*.pdf: Loops over all files that start with java_ followed by three digits (001, 002, etc.) and end with .pdf.
sed -e 's/^java_[0-9]\{3\}/java/': Uses sed to replace the prefix java_ followed by any three digits with just java.
^java_[0-9]\{3\} matches java_ followed by exactly three digits.
s/.../java/ replaces the matched pattern with java.
mv "$file" "$newname": Renames the file to the new format.
This command will rename files like java_001_example.pdf to java_example.pdf, java_002_report.pdf to java_report.pdf, and so on.