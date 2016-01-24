all: heartBeat.o UdpWrapper.o client.o server.o tcpWrapper.o SDFS.o SDFStest.o
	g++ -o output SDFStest.o heartBeat.o UdpWrapper.o client.o server.o tcpWrapper.o SDFS.o -pthread -g

SDFStest.o: SDFStest.cpp
	g++ -c -std=c++11 -pthread SDFStest.cpp -g

heartBeat.o: ./Res/heartBeat/heartBeat.cpp
	g++ -c -std=c++11 -pthread ./Res/heartBeat/heartBeat.cpp -g

UdpWrapper.o: ./Res/heartBeat/UdpWrapper.cpp
	g++ -c -std=c++11 -pthread ./Res/heartBeat/UdpWrapper.cpp -g
client.o: ./Res/TCPserver/client.cpp
	g++ -c -std=c++11 -pthread ./Res/TCPserver/client.cpp -g
	
server.o: ./Res/TCPserver/server.cpp
	g++ -c -std=c++11 -pthread ./Res/TCPserver/server.cpp -g
tcpWrapper.o: ./Res/TCPserver/tcpWrapper.cpp
	g++ -c -std=c++11 -pthread ./Res/TCPserver/tcpWrapper.cpp -g
SDFS.o: SDFS.cpp
	g++ -c -std=c++11 -pthread SDFS.cpp -g
	
clean:
	rm -f *o output hb output.txt
	rm -f ./cloud/*
	
cl:
	rm -f ./cloud/*







