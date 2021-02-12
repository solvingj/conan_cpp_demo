#include <boost/regex.hpp>
#include <string>
#include <iostream>

int main(int argc, const char * const argv[])
{
    boost::regex pat( "^Subject: (Re: |Aw: )*(.*)" );

    std::vector<int> values;
    for (int i = 1; i < argc; ++i) {
        const std::string line(argv[i]);
        boost::smatch matches;
        if (boost::regex_match(line, matches, pat))
            std::cout << "Regarding : " << matches[2] << std::endl;
    }
}