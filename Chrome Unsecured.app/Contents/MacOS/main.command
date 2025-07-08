#!/bin/sh

# main.command

#  Created by Abhishek Verma

# Get local path of Application
FILEPATH=$(dirname $0)
BASEPATH=${FILEPATH%/*/*/*}
echo $BASEPATH


# Insert shell script code
open -na Google\ Chrome --args --user-data-dir=/tmp/temporary-chrome-profile-dir --disable-web-security --disable-site-isolation-trials

exit 0
