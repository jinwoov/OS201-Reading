#!bin/bash

git add .

DATE=$(date)

git commit -m "changes made on $DATE"

git push origin $1


#END

