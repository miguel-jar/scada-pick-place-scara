SHELL = cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\ProgramData\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\MATLAB\R2017b\runtime\win64;C:\Program Files\MATLAB\R2017b\bin;C:\Program Files\MATLAB\R2015a\runtime\win64;C:\Program Files\MATLAB\R2015a\bin;C:\Program Files (x86)\IVI Foundation\VISA\WinNT\Bin;C:\Program Files\dotnet\;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Users\supervisorio\AppData\Local\Programs\Python\Launcher\;C:\Users\supervisorio\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\supervisorio\AppData\Local\Programs\Python\Launcher\;C:\Users\supervisorio\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.1.14.40 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := supervisorio
export AS_PATH := C:/BrAutomation/AS41
export AS_BIN_PATH := C:/BrAutomation/AS41/Bin-en
export AS_PROJECT_PATH := C:/Users/supervisorio/Documents/miguel_a214_trabalho_final/MiguelA214Projeto
export AS_PROJECT_NAME := MiguelA214Projeto
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS41/AS/VC
export AS_TEMP_PATH := C:/Users/supervisorio/Documents/miguel_a214_trabalho_final/MiguelA214Projeto/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/supervisorio/Documents/miguel_a214_trabalho_final/MiguelA214Projeto/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS41/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS41/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS41
export WIN32_AS_PATH := C:\\BrAutomation\\AS41
export WIN32_AS_BIN_PATH := C:\\BrAutomation\\AS41\\Bin-en
export WIN32_AS_PROJECT_PATH := C:\\Users\\supervisorio\\Documents\\miguel_a214_trabalho_final\\MiguelA214Projeto
export WIN32_AS_SYSTEM_PATH := C:\\BrAutomation\\AS\\System
export WIN32_AS_VC_PATH := C:\\BrAutomation\\AS41\\AS\\VC
export WIN32_AS_TEMP_PATH := C:\\Users\\supervisorio\\Documents\\miguel_a214_trabalho_final\\MiguelA214Projeto\\Temp
export WIN32_AS_BINARIES_PATH := C:\\Users\\supervisorio\\Documents\\miguel_a214_trabalho_final\\MiguelA214Projeto\\Binaries
export WIN32_AS_GNU_INST_PATH := C:\\BrAutomation\\AS41\\AS\\GnuInst\\V4.1.2
export WIN32_AS_GNU_BIN_PATH := $(WIN32_AS_GNU_INST_PATH)\\bin
export WIN32_AS_INSTALL_PATH := C:\\BrAutomation\\AS41

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/MiguelA214Projeto.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "BuildAndTransfer" 

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'C:/Users/supervisorio/Documents/miguel_a214_trabalho_final/MiguelA214Projeto/Temp/Objects/$(AS_CONFIGURATION)/X20CP1583/#cpu.mak' -k 

