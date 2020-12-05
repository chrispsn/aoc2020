/ Second cut - much cleaner when using an expr:

linegroups: (@[;0;1b]@~#')^0:`4.txt
passports: !/'.[;(;0);`n$]@(+":"\',/" "\')'linegroups  / thanks Phineas!

/ Part 1
#present:(7=#')#`cid_'passports

/ Part 2
rules: :((`i$byr)within 1920 2003
         (`i$iyr)within 2010 2021
         (`i$eyr)within 2020 2031
         (`i$-2_hgt)within(59 77;150 194)"cm"~-2#hgt
         "#"=*hcl;6=#"0123456789abcdef"#hcl;7=#hcl
         `amb`blu`brn`gry`grn`hzl`oth'`n$ecl
         9=#"0123456789"#pid)
+/&/+present@'rules


/ First cut - you can see it's messier

input: 0:`4.txt
linegroups: (0,&""~/:input)^input
passports: !'/ @[;0;`n$] @ +(+":"\' (,"")_" "\" "/)'linegroups

/ Part 1
#present:(7=#')#`cid_/:passports

/ Part 2
rules: !/+-2^(`byr;{(`i$x)within 1920 2003}
              `iyr;{(`i$x)within 2010 2021}
              `eyr;{(`i$x)within 2020 2031}
              `hgt;{(`i$-2_x) within $["cm"~-2#x; 150 194; 59 77]}
              `hcl;{&/("#"=*x)&6=#"0123456789abcdef"#x}
              `ecl;`amb`blu`brn`gry`grn`hzl`oth'`n$
              `pid;9=#"0123456789"#}

+/&/'{(rules@!x)@'x[]}'present

\\
