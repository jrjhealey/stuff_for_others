#!/bin/bash

cat $1 | sed -e '1!{/^>.*/d;}' | sed ':a;N;$!ba;s/\n//2g' | sed '1!s/.\{80\}/&\n/g' > $2
