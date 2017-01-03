#include <iostream>



int Mod(int iN, int iMod)
{
	int iQ = (iN / iMod);
	return iN - (iQ*iMod);
}

char GetChar(int iGenerator, char cBase, int iRange)
{
	return (cBase + Mod(iGenerator, iRange));
}

int main() {

	system("color 01");//Output blue font

	char caRow[80];
	int j = 7;
	int k = 2;
	int l = 5;
	int m = 1;


	while (true)
	{
		int i = 0; // Output a random row of characters
		while (i < 80)
		{
			if (caRow[i] != ' ') {
				caRow[i] = GetChar(j + i*i, 33, 30);
			}
			std::cout << caRow[i];
			++i;
		}

		j = (j + 31);
		k = (k + 17);
		l = (l + 47);
		m = (m + 67);
		caRow[Mod(j, 80)] = '-';
		caRow[Mod(k, 80)] = ' ';
		caRow[Mod(l, 80)] = '-';
		caRow[Mod(m, 80)] = ' ';


		// Delay
		i = 0;
		while (i < 30000)
		{
			GetChar(1, 1, 1);
			++i;
		}
	}
	return 0;
}
