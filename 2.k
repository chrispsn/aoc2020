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
354~+/{1=+/y@-1+x}/'x

/ third cut:
x:{(`i$"-"\x;z=*y)}.'" "\'input
614~+/{({x_!1+y}/x)'+/y}/'x      / 'within' better?
354~+/~{=/y@x-1}/'x

/ fourth cut: tried exprs as at to {y}/ style - kinda works
x:{`a`b`c!(`i$"-"\x),,z=*y}.'" "\'input
614~+/x@' :_[a;!1+b]'+/c      / 'within' better?
354~+/~x@' :=/c@-1+a,b

/ fifth cut: more vectorised
x:{`a`b`c!(`i$"-"\x),,z=*y}.'" "\'input
614~+/x :~|/(a>;b<)@\:+/'c
354~+/x :~=/'c@'-1+a,'b

/ sixth cut: remove redundancies
/ the `i$ in line 1 looks ripe for vectorisation...
x:`a`b`c!+({(`i$"-"\x),,z=*y}." "\)@'input
614 354~+/'x :~(|/(a>;b<)@\:+/'c;=/'c@'+(a;b)-1)

\\
