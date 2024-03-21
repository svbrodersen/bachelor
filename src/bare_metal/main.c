#define LENGTH_LEFT 5
#define LENGTH_RIGHT 5
void merge(int lst1[], int lst2[], int res[]) {
  int p1 = 0, p2 = 0;
  for (int i = 0; i < (LENGTH_LEFT + LENGTH_RIGHT); i++) {
    if (p1 >= LENGTH_LEFT) {
      res[i] = lst2[p2];
      p2++;
    } else if (p2 >= LENGTH_RIGHT) {
      res[i] = lst1[p1];
      p1++;
    } else if (lst1[p1] < lst2[p2]) {
      res[i] = lst1[p1];
      p1++;
    } else {
      res[i] = lst2[p2];
      p2++;
    }
  }
}

int main() {
  int lst1[LENGTH_LEFT] = {1, 4, 5, 7, 9};
  int lst2[LENGTH_RIGHT] = {2, 3, 6, 8, 10};
  int res[10];
  merge(lst1, lst2, res);
  return 0;
}
