#ifndef MAHJONGSET_H
#define MAHJONGSET_H

#include <vector>
#include "Tiles.h"

class MahjongSet {
    private:
        std::vector<Tiles> set;
    
    public:
        void SayHi();
};

#endif