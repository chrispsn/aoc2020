/ setup
i: `i$0:`1.txt

/ solution assumes no repeated numbers - check this:
=/#'(i;?i)
/ no repeats - good. so 1010 not an answer in #1, so we can take with replacement
/ of course all of the below assumes 2020-a+b is not a repeat of a or b :)

/ approach 1: golf
t:i@+!2##i
*/t(s:+/+t)?y:2020
*/*(i'*|+)#t,'y-s

/ approach 2: a bit more readable
t: +`a`b!i@!2##i
*/*(:2020=a+b)#t
*/*(:i'c)#update c:2020-a+b from t

/ approach 3: full ksql
t: +`a`b!i@!2##i
*/* select from t where 2020=a+b
*/* select from (update c:2020-a+b from t) where c in i

/ approach 4: ok fine, let's be pedantic
t: +`a`b!i@!2##i
*/* select from t where 2020=a+b
*/* select from (update c:2020-a+b from t) where (c in i) & ~c in (a;b)
