Quoted Parameter $@ returns both parameter
Quoted Parameter $*
Number of Parameter $#
Exit command $? 
    if successful 0
    if unsuccessful 1

### Until Command
```sh
until [ ! $a -lt 10 ]
do
    echo $a
    a = `expr $a + 1`
done

```
with until command loop will continue to run until condition is true


### While loop
```sh
a=0
while [ "$a" -lt 10 ] # this is loop1 lt = less than
do
    b="$a" # assign b to a
    while [ "$b" -ge 0 ] #this is loop 2 ge = greater than or equal to
    do
        echo -n "$b " print b
        b =`expr $b -1`
        done
        echo
        a=`expr $a+1`
done

```
- you can send a mail to yourself by 
``` sh
mail -s "$1 host is down" EMAILADDRESS@EMAIL.COM
```