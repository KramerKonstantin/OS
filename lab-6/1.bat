set lab6dir=LAB6
set testdir=test
set all=all.txt

mkdir %lab6dir%
wmic os get Caption > %lab6dir%\caption.txt
wmic os get FreePhysicalMemory > %lab6dir%\freePhysicalMemory.txt
wmic os get TotalVisibleMemorySize > %lab6dir%\totalVisibleMemorySize.txt
wmic logicaldisk get name,description > %lab6dir%\disks.txt

mkdir %testdir%
copy /y %lab6dir%\* %testdir%\*

copy /y /B %lab6dir%\* %all%

del /Q  C:\Users\asus\Desktop\OS\LAB6

exit 0