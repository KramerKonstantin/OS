set driverListFile=drivers.txt
set sortedDriverListFile=sortedDrivers.txt

driverquery /FO table /NH > %driverListFile%

sort /R %driverListFile% /O %sortedDriverListFile%

exit 0
