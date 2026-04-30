# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Danfysik_HallProbes
# Danfysik_HallProbes.dbd will be created and installed
DBD += Danfysik_HallProbes.dbd

# Danfysik_HallProbes.dbd will be made up from these files:
Danfysik_HallProbes_DBD += base.dbd
Danfysik_HallProbes_DBD += asyn.dbd
Danfysik_HallProbes_DBD += drvAsynIPPort.dbd
Danfysik_HallProbes_DBD += stream.dbd

# Include dbd files from all support applications:
#Danfysik_HallProbes_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Danfysik_HallProbes_LIBS += xxx

# Danfysik_HallProbes_registerRecordDeviceDriver.cpp derives from Danfysik_HallProbes.dbd
Danfysik_HallProbes_SRCS += Danfysik_HallProbes_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Danfysik_HallProbes_SRCS_DEFAULT += Danfysik_HallProbesMain.cpp
Danfysik_HallProbes_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Danfysik_HallProbes_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Danfysik_HallProbes_LIBS += stream
Danfysik_HallProbes_LIBS += asyn
Danfysik_HallProbes_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

