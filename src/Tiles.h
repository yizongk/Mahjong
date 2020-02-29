#ifndef TILES_H
#define TILES_H

#include <string>

enum TilesType {
    Circles = 1
};

class Tiles {
    private:
        std::string type;

    public:
        Tiles( TilesType );
        std::string getType();
};

#endif