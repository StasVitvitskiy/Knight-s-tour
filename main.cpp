#include <iostream>
#include <iomanip>
using namespace std;

#define BoardSize 8

int boardFive[5][5] = {
        {0,0,0,0,0},
        {0,0,0,0,0},
        {0,0,0,0,0},
        {0,0,0,0,0},
        {0,0,0,0,0}
};
int boardEight[8][8] = {
        {0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0},
        {0,0,0,0,0,0,0,0}

};

int moveSet[8][2] = {
        {1,-2},
        {2,-1},
        {2,1},
        {1,2},
        {-1,2},
        {-2,1},
        {-2,-1},
        {-1,-2}
};
int tries = 0;
int badMoves = 0;
bool testMove(int board[BoardSize][BoardSize], int move[2], int coords[2]);

bool moveKnight(int board[BoardSize][BoardSize], int coords[2], int step);

void knightsTour(int board[BoardSize][BoardSize], int coords[2]);

void printInfo(bool success, int board[BoardSize][BoardSize]);

bool testBoundaries(int coord) {
    return coord >= 0 && coord < BoardSize;
}
int main() {
    knightsTour(boardEight, new int[2]{ 0,0 });
}
int* nextCell(int coords[2], int move[2]) {
    int x = coords[0] + move[0];
    int y = coords[1] + move[1];
    return new int[2]{ x,y };
}
bool testMove(int board[BoardSize][BoardSize], int move[2], int coords[2]) {
    int* next = nextCell(coords, move);
    int x = next[0];
    int y = next[1];
    if (testBoundaries(x) && testBoundaries(y)) {
        return board[y][x] == 0;
    }
    return false;
}
bool moveKnight(int board[BoardSize][BoardSize], int coords[2], int step) {
    tries++;
    if (step == BoardSize * BoardSize) {
        board[coords[1]][coords[0]] = step;
        return true;
    }
    for (int i = 0; i < 8; i++) {
        if (testMove(board, moveSet[i], coords)) {
            int* next = nextCell(coords, moveSet[i]);
            board[coords[1]][coords[0]] = step;
            if (moveKnight(board, new int[2]{ next[0],next[1] }, step + 1)) {
                return true;
            }
            else {
                board[next[1]][next[0]] = 0;
                badMoves++;
            }
        }
    }
    return false;
}
void knightsTour(int board[BoardSize][BoardSize], int coords[2]) {
    if (moveKnight(board, coords, 1)) {
        printInfo(true, board);
    }
    else {
        printInfo(false, board);
    }
}
void printInfo(bool success, int board[BoardSize][BoardSize]) {
    if (success) {
        cout << "Yeehaw!!! after " << tries << endl;
        cout << "and " << badMoves << " bad moves" << endl;
        for (int i = 0; i < BoardSize; i++) {
            for (int j = 0; j < BoardSize; j++) {
                cout << setw(3) << board[i][j];
            }
            cout << endl;
        }
    }
}

