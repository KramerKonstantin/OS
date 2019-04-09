set serviceListFile=services.txt
set newServiceListFile=newservices.txt
set servicesDiff=servicesDiff.txt

fc /A %serviceListFile% %newServiceListFile% > %servicesDiff%