#!/bin/bash



##### General

### A bash script starts with the shebang:
#!/bin/bash
### If you want to know what bash is actually doing, do:
#!/bin/bash -xv




##### Parameter expansion

### VAR is set and not null, VAR2 is set but null, VAR3 is unset
VAR="Hallo Welt!"
VAR2=""

### If the variable is unset or null, print the default value
printf "VAR : %s\n" "${VAR:-unset or null}"
printf "VAR2: %s\n" "${VAR2:-unset or null}"
printf "VAR3: %s\n" "${VAR3:-unset or null}"

printf "VAR : %s\n" "${VAR-unset}"
printf "VAR2: %s\n" "${VAR2-unset}"
printf "VAR3: %s\n" "${VAR3-unset}"

### if $list is not empty, print default value
for item in a b c d e f g h i j k
do
    list=${list:+$list,}$item
done
printf "%s\n" "$list"

### Print only substring of $VAR
printf "%s\n" "${VAR:3}"
printf "%s\n" "${VAR:4:4}"
printf "%s\n" "${VAR:$(( ${#VAR} - 1 ))}"



##### Shell arithmetic

### Use $(( expression )) to do basic calculations in your shell
printf "%d + %d = %d" 3 4 $(( 3 + 4 ))

 
 



