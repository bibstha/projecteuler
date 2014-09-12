#include<iostream>

using namespace std;
int count(int r, int c, int t) {
  if (r == 0 && c == 0) {
    return t + 1;
  }

  if (r > 0) {
    t = count(r-1, c, t);
  }

  if (c > 0) {
    t = count(r, c-1, t);
  }

  return t;
}
int main() {
  for (int i=1; i<=10; i++) {
    cout << count(i,i, 0) << endl;
  }
  
}