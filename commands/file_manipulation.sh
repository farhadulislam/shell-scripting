echo " "
#You can run the following if you wish to rename files
#ls | cut -d. -f1 | xargs -I {}  mv {}.txt {}.text

# renaming file
#for file in *; do [ -f "$file" ] && mv "$file" "tech_$file"; done

# rename again if you have renamed with incorrect prefix
#for file in tech_*; do mv "$file" "${file/tech_/tech_arch_}"; done