#include <stdio.h>
#include <numeric> //accumulate
#include <algorithm> //count
#include <string.h>

int main(int, char**)
{
	char *input=
"TO JEST PRZYKLADOWE KONKURSOWE ZDANIE DO SPRAWDZENIA DLA KAZDEGO UCZESTNIKA KONKURSU";
	//"ABCDE";
	char len=strlen(input);
	int sum=std::accumulate(input, input+len, 0);
	int mean=sum/len;
	printf("len=%d sum=%d mean=%c input.count(mean)=%d", len, sum, mean, std::count(input, input+len, mean));
	return 0;
}
