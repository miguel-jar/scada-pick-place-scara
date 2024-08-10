UnmarkedObjectFolder := C:/Users/supervisorio/Documents/miguel_a214_trabalho_final/MiguelA214Projeto/Logical/ProjetoMiguelA214
MarkedObjectFolder := C:/Users/supervisorio/Documents/miguel_a214_trabalho_final/MiguelA214Projeto/Logical/ProjetoMiguelA214

$(AS_CPU_PATH)/ProjetoMig.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	$(AS_CPU_PATH)/ProjetoMig/ProjetoMig.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/ProjetoMig/ProjetoMig.ox" -o "$(AS_CPU_PATH)/ProjetoMig.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.09 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Cyclic4 -p 2 -s "ProjetoMiguelA214" -L "AsIecCon: V*, AsTime: V*, Operator: V*, Runtime: V*, standard: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/ProjetoMig/ProjetoMig.ox: \
	$(AS_CPU_PATH)/ProjetoMig/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/ProjetoMig/a.out" -o "$(AS_CPU_PATH)/ProjetoMig/ProjetoMig.ox" -T SG4 -r Cyclic4   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/ProjetoMig/a.out: \
	$(AS_CPU_PATH)/ProjetoMig/ProjetoMiguelA214Cyclic.st.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/ProjetoMig/ProjetoMiguelA214Cyclic.st.o"  -o "$(AS_CPU_PATH)/ProjetoMig/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_SYSTEM_PATH)/D0409/SG4/IA32/libstandard.a" "-Wl,$(AS_SYSTEM_PATH)/D0409/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/D0409/SG4/IA32/libAsTime.a" "-Wl,$(AS_SYSTEM_PATH)/D0409/SG4/IA32/libRuntime.a" "-Wl,$(AS_SYSTEM_PATH)/D0409/SG4/IA32/libOperator.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -nostdlib -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/ProjetoMig/ProjetoMiguelA214Cyclic.st.o: \
	$(AS_PROJECT_PATH)/Logical/ProjetoMiguelA214/ProjetoMiguelA214Cyclic.st \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/ProjetoMiguelA214/ProjetoMiguelA214Cyclic.st" -o "$(AS_CPU_PATH)/ProjetoMig/ProjetoMiguelA214Cyclic.st.o"  -O "$(AS_CPU_PATH)//ProjetoMig/ProjetoMiguelA214Cyclic.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: