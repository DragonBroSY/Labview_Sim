#include <arpa/inet.h> // inet_addr()
#include <strings.h> // bzero()
#include <cstring> 
#include <iostream> 
#include <sstream> 
#include <vector> 
#include <netinet/in.h> 
#include <sys/socket.h> 
#include <unistd.h> 
#include <cstdlib> 
#include<stdio.h>
#include<stdlib.h>
#include <string>     // std::string, std::stof
#include "custom_init.h"
using namespace std;

float* data;
float* inVals;

int main()
{
	int buff_size = 100; //Need to become dynamic, size recieved as input from server
	char buff[buff_size];
	int n; //bytes read from buff
	int m; //bytes written to host
	int dataArraySize = 10;
	data = (float*)malloc(sizeof(float) * dataArraySize);
	data[2] = 0.0f;
	data[3] = 1.0f;
	data[4] = 1.0f;
	data[5] = 1.0f;
	data[6] = 1.0f;

	float EEC_UEI_test1; //input params from shmem
	float EEC_UEI_test2; //input params from shmem

	custom_init customInst;
	float* shmptr = customInst.comm_init();

	// creating socket 
	int clientSocket = socket(AF_INET, SOCK_STREAM, 0);

	// specifying address 
	sockaddr_in serverAddress;
	serverAddress.sin_family = AF_INET;
	serverAddress.sin_port = htons(6350);
	serverAddress.sin_addr.s_addr = inet_addr("192.6.1.206");

	// connect the client socket to server socket
	if (connect(clientSocket, (struct sockaddr*)&serverAddress,
		sizeof(serverAddress)) != 0) {
		std::cout << "connection with the server failed..." << "\n";
	}
	else
		std::cout << "connected to the server..from delta1" << "\n";

	for (;;) {
		bzero(buff, sizeof(buff));
		n = read(clientSocket, buff, buff_size);

		std::cout << "buff content: " << buff << " bytes read for buff: " << n << "\n";

		shmptr = customInst.update(data);
		shmptr = customInst.send2server();
		EEC_UEI_test1 = shmptr[0];
		EEC_UEI_test2 = shmptr[1];

		std::string str1 = std::to_string(EEC_UEI_test1);
		std::string str2 = std::to_string(EEC_UEI_test2);
		std::string str3 = str1 + " " + str2;
		std::cout << "xmit string from send2server(0 is:" << str3 << "\n";
		send(clientSocket, str3.c_str(), str3.length(), 0);

		/* wait 5 us */
		usleep(5000);
		std::cout << "shmptr OUTSIDE comm_init() is:" << shmptr << "\n";

		std::cout << "Read in params EEC_UEI_test1&2: " << shmptr[0] << " " << shmptr[1] << "\n";

		std::string buffStr(buff);
		std::string param;
		int index = 0;

		// Create a stringstream object with the input string 
		stringstream ss(buffStr);

		// Tokenize the input string by comma delimiter 
		string token;
		vector<string> tokens;
		char delimiter = ' ';

		while (getline(ss, token, delimiter)) {
			tokens.push_back(token);
		}

		for (auto param : tokens) {
			data[index + 2] = std::stof(param);
			cout << "Parsed params from buffStr: " << data[index + 2] << endl;
			index++;
		}

		cout << "data array size is: " << dataArraySize << endl;
		for (int i =0 ; i <= dataArraySize - 1; i++)
			cout << "Parsed params in data[]: " << data[i] << endl;

		std::cout << "Read back value from wrote to shmptr[0], shmptr[1], shmptr[2], shmptr[3]:" << shmptr[0] << " " << shmptr[1] << " " << shmptr[2] << " " << shmptr[3] << '\n';
	}

	// closing socket 
	close(clientSocket);

	return 0;
}
