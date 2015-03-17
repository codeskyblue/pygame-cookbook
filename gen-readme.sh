#!/bin/bash
#

cat >> README.md <<EOF
![demo](demo.png)
## CODE
EOF
echo '```' >> README.md
cat $1 >> README.md
echo '```' >> README.md
