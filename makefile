GPC=gpc

UNIT_PATH=src/modules
UNIT_DESTINATION=build/modules
OBJECT_DESTINATION=build
EXECUTABLE_PATH=bin

MAIN_PROGRAM=src/Pascalendar.pas

GPCFLAGS=--extended-pascal -O3 -Wall --executable-file-name -g --automake --unit-path=$(UNIT_PATH) --unit-destination-path=$(UNIT_DESTINATION) --object-destination-path=$(OBJECT_DESTINATION) --executable-path=$(EXECUTABLE_PATH)



all: src/Pascalendar.pas
	@echo "Compilation"
	mkdir -p build/modules
	mkdir -p bin
	$(GPC) $(GPCFLAGS) $(MAIN_PROGRAM)

clean: 
	@echo "Removing all but source code files"
	rm -rf bin
	rm -rf build