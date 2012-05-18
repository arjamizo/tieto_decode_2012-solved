#include <stdio.h>

int main(int, char**)
{
	int input[] = {
	1364476232, 1129601601, 1128613712, 1447510359
	, 1179861337, 1178686549, 1096439881, 1380341577
	, 1229078855, 1397113431};
	int N=(&N-input);
	printf("%d\n",N);
	char *inputchars=(char*)input;
	int Nchars=N*4;
	int ans=0;
	for(int i=0; i<Nchars; ++i)
	{
		char c=inputchars[i];
		printf("%c", c);
		if(c>='I' and c<='U') ans++;
	}
	printf("\n");
	printf("there are %d letters between I and U, including them",ans);
	return 0;
}
