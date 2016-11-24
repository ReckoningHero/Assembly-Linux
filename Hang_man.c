#include <stdio.h>

using namespace std;

std::string getFileContents(std::ifstream&);
int NUM_TRY = 3;
int checkGuess(char, string, string&);
void main_menu();
string mess = "Play!";

std::string getFileContents(std::ifstream& File)
{
	std::string Lines = "";        //All lines

	if (File)                      //Check if everything is good
	{
		while (File.good())
		{
			std::string TempLine;                  //Temp line
			std::getline(File, TempLine);        //Get temp line
			TempLine += "\n";                      //Add newline character

			Lines += TempLine;                     //Add newline
		}
		return Lines;
	}
	else                           //Else Return error
	{
		return "ERROR File does not exist.";
	}
}

int main(int argc, char *argv[])
{



	string name;
	char letter;
	string console;


	string consoles[] =
	{
		"NES",
		"SNES",
		"Genesis",
		"Saturn",
		"Dreamcast",
		"N64",
		"Gamecube",
		"Wii",
		"Wii U",
		"NSwitch",
		"PlayStation",
		"Xbox",
		"Atari 2600",
		"Gameboy",
		"DS",
		"3DS",
		"PSPortable"
		"PSVITA"
	};

	srand(time(NULL));
	int n = rand() % 12;
	console = consoles[n];


	string hide_m(console.length(), 'X');




	while (NUM_TRY != 0)
	{
		main_menu();
		cout << "\n\n\t\t\t\t" << hide_m;
		cout << "\n\n\t\t\t\tGuess a letter or number: ";
		cin >> letter;

		if (checkGuess(letter, console, hide_m) == 0)
		{
			mess = "Incorrect letter/number.";
			NUM_TRY = NUM_TRY - 1;
		}
		else
		{
			mess = "NICE! You guess a letter/number";
		}



		if (console == hide_m)
		{
			mess = "Congratulations! You got it!";
			main_menu();
			cout << "\n\t\t\t\tThe console is : " << console << endl;
			std::ifstream Reader("console.txt");             //Open file

			std::string Art = getFileContents(Reader);       //Get file

			std::cout << Art << std::endl;               //Print it to the screen

			Reader.close(); //Close the file
			break;
		}
	}
	if (NUM_TRY == 0)
	{
		mess = "NOOOOOOO!...you've been hanged.";
		main_menu();
		cout << "\n\t\t\t\tThe console was : " << console << endl;

		std::ifstream Reader("File1.txt");             //Open file

		std::string Art = getFileContents(Reader);       //Get file

		std::cout << Art << std::endl;               //Print it to the screen

		Reader.close(); //Close the file

	}
	cin.ignore();
	cin.get();
	return 0;
}


int checkGuess(char guess, string secretconsole, string &guessconsole)
{
	int i;
	int matches = 0;
	int len = secretconsole.length();
	for (i = 0; i< len; i++)
	{

		if (guess == guessconsole[i])
			return 0;

		if (guess == secretconsole[i])
		{
			guessconsole[i] = guess;
			matches++;
		}
	}
	return matches;
}

void main_menu()
{
	system("color 02");//Color Console
	system("cls");



	std::ifstream Reader("death.txt");             //Open file

	std::string Art = getFileContents(Reader);       //Get file

	std::cout << Art << std::endl;               //Print it to the screen

	Reader.close(); //Close the file



	cout << "\t\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";
	cout << "\n\t\t\t\tHangman Game!";
	cout << "\n\t\tYou have " << NUM_TRY << " tries to try and guess the console.";
	cout << "\n\n\t\t\t\t" + mess;
	cout << "\n\t\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n";

}
