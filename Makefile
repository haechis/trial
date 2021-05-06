myHeader.o: myHeader.h myHeader.cpp
	g++ -c myHeader.cpp

main.o: myHeader.h main.cpp 
	g++ -c main.cpp

try: myHeader.o main.o
	g++ -o try main.o myHeader.o

all: try

clear:
	rm -f myHeader.o main.o try