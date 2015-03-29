#include <iostream>
#include <string>
#include <cstdlib>
#include <sstream>

using namespace std;

int main( int argc, char ** argv )
{
  string line;
  string value;

  while( !cin.eof() )
  {
    cin >> value;

    if( value == "" )
      continue;

    getline( cin, line );
    line = "java -jar ../HTMLParser/out/artifacts/HTMLParser_jar/HTMLParser.jar http://www.ratebeer.com/beer/mybeer/" + value + "/";

    //cout << line << endl;
    system( line.c_str() );
  }

  return 0;
}

