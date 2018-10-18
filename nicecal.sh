#!/bin/bash
case $# in
    0) set `date`; m=`echo $2 | sed 's/[^0-9]//'`; y=`echo $1 | sed 's/[^0-9]//'`;;
    1) m=$1; set `date`; y=`echo $1 | sed 's/[^0-9]//'`;;
    *) m=$2; y=$1;;
esac

case $m in
    jan* | Jan*) m=1;;
    feb* | Feb*) m=2;;
    mar* | Mar*) m=3;;
    apr* | Apr*) m=4;;
    may* | May*) m=5;;
    jun* | Jun*) m=6;;
    jul* | Jul*) m=7;;
    aug* | Aug*) m=8;;
    sep* | Sep*) m=9;;
    oct* | Oct*) m=10;;
    nov* | Nov*) m=11;;
    dec* | Dec*) m=12;;
    [1-9] | 10 | 11 |12 );;
*) y=$m; m="" ;;
esac

/usr/bin/cal $m $y


