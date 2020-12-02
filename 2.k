input: ("1-3 a: abcde"
        "1-3 b: cdefg"
        "2-9 c: ccccccccc")
input: 0:`2.txt

/ first cut:
614~+/{{(+/z=*y)within 0 1+`i$"-"\x}." "\x}'input
354~+/{{1=+/(*y)=z -1+`i$"-"\x}." "\x}'input

/ second cut:
x:{(`i$"-"\x;z=*y)}.'" "\'input
614~+/{(+/y)within 0 1+x}/'x
354~+/{1=+/y -1+x}/'x

/ third cut (nb: on phone, can't test):
x:{(`i$"-"\x;z=*y)}.'" "\'input
614~+/{(+/y)within 0 1+x}/'x
354~+/{~=/y x-1}/'x
