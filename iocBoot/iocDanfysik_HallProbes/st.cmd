#!../../bin/linux-x86_64/Danfysik_HallProbes

#- SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change Danfysik_HallProbes to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/Danfysik_HallProbes.dbd"
Danfysik_HallProbes_registerRecordDeviceDriver pdbbase
## Load record instances

#dbLoadRecords("db/Danfysik_HallProbes.db","user=vscode")
drvAsynIPPortConfigure("DHSTB001", "192.168.190.51:4002 TCP")


epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)/db")
dbLoadRecords("db/hallprobe.db", "P=readHall,R=DHSTB001,PORT=DHSTB001")


cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=vscode"
