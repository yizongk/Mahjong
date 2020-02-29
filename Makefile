INSTALLDIR := ./
CC         := /usr/bin/g++
CFLAGS     += -Wall
MJ_OBJECTS := main.o MahjongSet.o Tiles.o #TilesType.o
OBJECTS	   := $(MJ_OBJECTS)
EXE        := test_MJ_main.exe


.PHONY: all
all: $(EXE)

test_MJ_main.exe: $(MJ_OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^
	@ echo Changed files: $?


main.o: src/main.cpp
	g++ -c src/main.cpp
MahjongSet.o: src/MahjongSet.cpp
	g++ -c src/MahjongSet.cpp
Tiles.o: src/Tiles.cpp
	g++ -c src/Tiles.cpp
# TilesType.o: /src/TilesType.cpp
# 	g++ -c /src/TilesType.cpp


.PHONY: clean
clean:
	$(RM) $(OBJECTS) 

.PHONE: cleanall
cleanall:
	$(RM) $(OBJECTS) $(EXE)
