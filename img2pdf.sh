#!/bin/csh

set dir=`ls -F ~/Downloads/ | grep / | sed -e "s/\///"`

foreach x ($dir)
        convert -limit memory 1 -limit map 1 ~/Downloads/"$x"/"*.{png,jpg,jpeg}" ~/Downloads/"$x"/"$x".pdf
        cp ~/Downloads/$x/$x.pdf ~/
end
