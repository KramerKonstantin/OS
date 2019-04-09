set serviceListFile=services.txt
set newServiceListFile=newservices.txt

net start > %serviceListFile%

net stop dnscache

timeout 5
net start > %newServiceListFile%

call 3.2.bat

net start dnscache

TIMEOUT /T -1

exit 0