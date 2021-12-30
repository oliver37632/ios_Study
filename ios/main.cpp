#include <iostream>

using namespace std;
int main(){
    CMyList* list = new CMyList;
    int num;
    
    while (1) {
        list -> ShowMenu;
        cin >> num;
        switch (num) {
            case 1:
                list -> Insert();
                list -> Print();
                break;
            case 2:
                list -> Print()
                break;
            case 0:
                delete list;
                return 0;
            default:
                break;
        }
    }
}
