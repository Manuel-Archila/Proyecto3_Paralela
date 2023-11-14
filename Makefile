all: pgm.o	hough compartida

hough:	houghBase.cu pgm.o
	nvcc houghBase.cu pgm.o -o hough -ljpeg

pgm.o:	common/pgm.cpp
	g++ -c common/pgm.cpp -o ./pgm.o

compartida: compartida.cu pgm.o
	nvcc compartida.cu pgm.o -o compartida -ljpeg

